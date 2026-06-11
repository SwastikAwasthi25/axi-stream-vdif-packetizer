#include "golden_model.hpp"
#include <vector>
#include <iostream>

#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>
#include <fstream>

typedef ap_axiu<32,0,0,0> axis_t;

void vdif_chain(
    hls::stream<ap_uint<8>> &adc_in,
    hls::stream<axis_t> &out_stream,

    ap_uint<6> epoch,
    ap_uint<16> station_id,
    ap_uint<10> thread_id,
    ap_uint<5> bits_per_sample,
    ap_uint<1> complex_data,
    ap_uint<1> pps,
    ap_uint<16> payload_words
);
void print_vdif_header(
    uint32_t word0,
    uint32_t word1,
    uint32_t word2,
    uint32_t word3
)
{
    std::cout << "\n========== VDIF HEADER ==========\n";

    std::cout << "WORD0 = 0x" << std::hex << word0 << std::endl;
    std::cout << " Invalid Flag   : " << ((word0 >> 31) & 0x1) << std::endl;
    std::cout << " Legacy Mode    : " << ((word0 >> 30) & 0x1) << std::endl;
    std::cout << " Seconds Epoch  : "
              << std::dec
              << (word0 & 0x3FFFFFFF)
              << std::endl;

    std::cout << "\nWORD1 = 0x" << std::hex << word1 << std::endl;
    std::cout << " Ref Epoch      : "
              << std::dec
              << ((word1 >> 24) & 0x3F)
              << std::endl;
    std::cout << " Frame Number   : "
              << (word1 & 0xFFFFFF)
              << std::endl;

    std::cout << "\nWORD2 = 0x" << std::hex << word2 << std::endl;
    std::cout << " VDIF Version   : "
              << std::dec
              << ((word2 >> 29) & 0x7)
              << std::endl;
    std::cout << " Log2 Channels  : "
              << ((word2 >> 24) & 0x1F)
              << std::endl;
    std::cout << " Frame Length   : "
              << (word2 & 0xFFFFFF)
              << " (units of 8 bytes)"
              << std::endl;

    std::cout << "\nWORD3 = 0x" << std::hex << word3 << std::endl;
    std::cout << " Data Type      : "
              << (((word3 >> 31) & 0x1) ? "Complex" : "Real")
              << std::endl;
    std::cout << " Bits/Sample    : "
              << std::dec
              << (((word3 >> 26) & 0x1F) + 1)
              << std::endl;
    std::cout << " Thread ID      : "
              << ((word3 >> 16) & 0x3FF)
              << std::endl;
    std::cout << " Station ID     : "
              << (word3 & 0xFFFF)
              << std::endl;

    std::cout << "=================================\n";
}
void run_test(
ap_uint<5> bits_per_sample,
uint32_t frame_no,
uint16_t payload_words
)
{
hls::stream<ap_uint<8>> adc_stream;
hls::stream<axis_t> out_stream;

axis_t pkt;

//--------------------------------------------------
// Generate ADC Samples
//--------------------------------------------------

int samples_needed;

if(bits_per_sample == 2)
    samples_needed = payload_words * 16;
else if(bits_per_sample == 4)
    samples_needed = payload_words * 8;
else
    samples_needed = payload_words * 4;

for(int k=0;k<samples_needed;k++)
{
    adc_stream.write(k & 0xFF);
}

//--------------------------------------------------
// Run Chain
//--------------------------------------------------

vdif_chain(
    adc_stream,
    out_stream,
    52,
    5,
    0,
    bits_per_sample,
    0,
    0,
    payload_words
);

//--------------------------------------------------
// Golden Payload
//--------------------------------------------------

std::vector<uint32_t> payloads(payload_words);

for(int i=0;i<payload_words;i++)
{
    payloads[i] =
        ((((4*i)+3) & 0xFF) << 24) |
        ((((4*i)+2) & 0xFF) << 16) |
        ((((4*i)+1) & 0xFF) << 8 ) |
        (((4*i) & 0xFF));
}

std::vector<uint32_t> expected =
    golden_packetizer(
        5000,
        frame_no,
        52,
        5,
        0,
        bits_per_sample,
        false,
        payloads.data(),
        payload_words
    );

//--------------------------------------------------
// Header Visualization
//--------------------------------------------------

print_vdif_header(
    expected[0],
    expected[1],
    expected[2],
    expected[3]
);

//--------------------------------------------------
// Binary VDIF Output
//--------------------------------------------------

std::ofstream fout(
    "output.vdif",
    std::ios::binary | std::ios::app
);

//--------------------------------------------------
// Compare
//--------------------------------------------------

bool pass = true;

std::cout
    << "\n====================\n";

std::cout
    << std::dec
    << (int)bits_per_sample
    << "-BIT MODE | Payload = "
    << payload_words * 4
    << " bytes\n";

std::cout
    << "====================\n";

for(int i=0;i<(payload_words + 8);i++)
{
    pkt = out_stream.read();

    uint32_t actual =
        pkt.data.to_uint();

    uint32_t golden =
        expected[i];

    fout.write(
        reinterpret_cast<char*>(&actual),
        sizeof(uint32_t)
    );

    std::cout
        << "Word "
        << i
        << " | Actual = 0x"
        << std::hex
        << actual
        << " | Expected = 0x"
        << golden;

    if(actual != golden)
    {
        std::cout
            << " <-- MISMATCH";

        pass = false;
    }

    if(i == payload_words + 7)
    {
        if(pkt.last != 1)
            pass = false;
    }
    else
    {
        if(pkt.last != 0)
            pass = false;
    }

    std::cout << std::endl;
}

fout.close();

//--------------------------------------------------
// Result
//--------------------------------------------------

if(pass)
{
    std::cout
        << "\nTEST PASSED\n";
}
else
{
    std::cout
        << "\nTEST FAILED\n";
}

}
void pps_test()
{
    hls::stream<ap_uint<8>> adc_stream;
    hls::stream<axis_t> out_stream;

    axis_t pkt;

    //--------------------------------------------------
    // First Packet (PPS = 0)
    //--------------------------------------------------

    for(int i=0;i<4096;i++)
    {
        adc_stream.write(i & 0xFF);
    }

    vdif_chain(
        adc_stream,
        out_stream,
        52,
        5,
        0,
        2,
        0,
        0,
        256
    );

    //--------------------------------------------------
    // Read first header
    //--------------------------------------------------

    pkt = out_stream.read();
    uint32_t sec_before =
        pkt.data.to_uint();

    pkt = out_stream.read();
    uint32_t frame_before_raw =
        pkt.data.to_uint();

    //--------------------------------------------------
    // Flush rest of first packet
    // Total packet = 4 header + 256 payload
    // Already consumed 2 words
    //--------------------------------------------------

    for(int i=0;i<262;i++)
    {
        pkt = out_stream.read();
    }

    //--------------------------------------------------
    // Prepare second packet samples
    //--------------------------------------------------

    for(int i=0;i<512;i++)
    {
        adc_stream.write(i & 0xFF);
    }

    //--------------------------------------------------
    // Second Packet (PPS = 1)
    //--------------------------------------------------

    vdif_chain(
        adc_stream,
        out_stream,
        52,
        5,
        0,
        2,
        0,
        1,
        32
    );

    //--------------------------------------------------
    // Read second header
    //--------------------------------------------------

    pkt = out_stream.read();
    uint32_t sec_after =
        pkt.data.to_uint();

    pkt = out_stream.read();
    uint32_t frame_after_raw =
        pkt.data.to_uint();

    //--------------------------------------------------
    // Flush rest of second packet
    // Total packet = 4 + 32
    // Already consumed 2 words
    //--------------------------------------------------

    for(int i=0;i<38;i++)
    {
        pkt = out_stream.read();
    }

    //--------------------------------------------------
    // Extract Frame Numbers
    //--------------------------------------------------

    uint32_t frame_before =
        frame_before_raw & 0xFFFFFF;

    uint32_t frame_after =
        frame_after_raw & 0xFFFFFF;

    //--------------------------------------------------
    // Print Results
    //--------------------------------------------------

    std::cout
        << "\n====================\n";

    std::cout
        << "PPS TEST\n";

    std::cout
        << "====================\n";

    std::cout
        << "Seconds Before = "
        << std::dec
        << sec_before
        << std::endl;

    std::cout
        << "Seconds After  = "
        << sec_after
        << std::endl;

    std::cout
        << "Frame Before   = "
        << frame_before
        << std::endl;

    std::cout
        << "Frame After    = "
        << frame_after
        << std::endl;

    //--------------------------------------------------
    // Verification
    //--------------------------------------------------

    bool pass = true;

    if(sec_after != sec_before + 1)
        pass = false;

    if(frame_after != 0)
        pass = false;

    if(pass)
    {
        std::cout
            << "\nPPS TEST PASSED\n";
    }
    else
    {
        std::cout
            << "\nPPS TEST FAILED\n";
    }
}
int main()
{
    std::ofstream clear_file(
        "output.vdif",
        std::ios::binary | std::ios::trunc
    );
    clear_file.close();

    run_test(8,0,256);
    run_test(8,1,512);
    run_test(8,2,1024);
    run_test(8,3,2048);

    pps_test();

    return 0;
}