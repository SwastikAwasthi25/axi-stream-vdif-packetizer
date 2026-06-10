#include "golden_model.hpp"
#include <vector>
#include <iostream>

#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>

typedef ap_axiu<32,0,0,0> axis_t;

void vdif_chain(
    hls::stream<ap_uint<8>> &adc_in,
    hls::stream<axis_t> &out_stream,

    ap_uint<6> epoch,
    ap_uint<16> station_id,
    ap_uint<10> thread_id,
    ap_uint<5> bits_per_sample,
    ap_uint<1> complex_data,
    ap_uint<1> pps
);

void run_test(
    ap_uint<5> bits_per_sample,
    uint32_t frame_no
)
{
    hls::stream<ap_uint<8>> adc_stream;
    hls::stream<axis_t> out_stream;

    axis_t pkt;

    //--------------------------------------------------
    // Generate ADC Samples
    //--------------------------------------------------

    if(bits_per_sample == 2)
    {
        for(int k=0;k<64;k++)
            adc_stream.write(k % 4);
    }
    else if(bits_per_sample == 4)
    {
        for(int k=0;k<32;k++)
            adc_stream.write(k % 16);
    }
    else
    {
        for(int k=0;k<16;k++)
            adc_stream.write(k);
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
        0
    );

    //--------------------------------------------------
    // Golden Model Payloads
    //--------------------------------------------------

    uint32_t payloads[4];

    if(bits_per_sample == 2)
    {
        payloads[0] = 0xE4E4E4E4;
        payloads[1] = 0xE4E4E4E4;
        payloads[2] = 0xE4E4E4E4;
        payloads[3] = 0xE4E4E4E4;
    }
    else if(bits_per_sample == 4)
    {
        payloads[0] = 0x76543210;
        payloads[1] = 0xFEDCBA98;
        payloads[2] = 0x76543210;
        payloads[3] = 0xFEDCBA98;
    }
    else
    {
        payloads[0] = 0x03020100;
        payloads[1] = 0x07060504;
        payloads[2] = 0x0B0A0908;
        payloads[3] = 0x0F0E0D0C;
    }

    //--------------------------------------------------
    // Expected Packet From Golden Model
    //--------------------------------------------------

    std::vector<uint32_t> expected =
        golden_packetizer(
            5000,
            frame_no,
            52,
            5,
            0,
            bits_per_sample,
            false,
            payloads
        );

    //--------------------------------------------------
    // Compare
    //--------------------------------------------------

    bool pass = true;

    std::cout
        << "\n====================\n";

    std::cout
        << (int)bits_per_sample
        << "-BIT MODE\n";

    std::cout
        << "====================\n";

    for(int i=0;i<8;i++)
    {
        pkt = out_stream.read();

        uint32_t actual =
            pkt.data.to_uint();

        uint32_t golden =
            expected[i];

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

        if(pkt.last)
        {
            std::cout
                << " TLAST";
        }

        std::cout
            << std::endl;
    }

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

int main()
{
    run_test(2,0);

    run_test(4,1);

    run_test(8,2);

    return 0;
}