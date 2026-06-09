#include <iostream>
#include <vector>
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>

typedef ap_axiu<32,0,0,0> axis_t;

void packetizer(
    hls::stream<axis_t> &in_stream,
    hls::stream<axis_t> &out_stream,
    ap_uint<6> epoch,
    ap_uint<16> station_id,
    ap_uint<10> thread_id,
    ap_uint<5> bits_per_sample,
    ap_uint<1> complex_data,
    ap_uint<1> pps
);

//--------------------------------------------------
// Golden Model
//--------------------------------------------------

std::vector<uint32_t> generate_golden_packet()
{
    std::vector<uint32_t> packet;

    packet.push_back(0x1388);      // seconds = 5000
    packet.push_back(0x34000000);  // epoch=52 frame=0
    packet.push_back(0x20000008);  // version/frame length
    packet.push_back(0x04000005);  // 2-bit real data

    packet.push_back(0x11111111);
    packet.push_back(0x22222222);
    packet.push_back(0x33333333);
    packet.push_back(0x44444444);

    return packet;
}

//--------------------------------------------------
// Main
//--------------------------------------------------

int main()
{
    hls::stream<axis_t> in_stream;
    hls::stream<axis_t> out_stream;

    axis_t packet;

    //--------------------------------------------------
    // Input Payload
    //--------------------------------------------------

    packet.data = 0x11111111;
    packet.last = 0;
    in_stream.write(packet);

    packet.data = 0x22222222;
    packet.last = 0;
    in_stream.write(packet);

    packet.data = 0x33333333;
    packet.last = 0;
    in_stream.write(packet);

    packet.data = 0x44444444;
    packet.last = 1;
    in_stream.write(packet);

    //--------------------------------------------------
    // Run DUT
    //--------------------------------------------------

    packetizer(
        in_stream,
        out_stream,
        52,
        5,
        0,
        2,
        0,
        0
    );

    //--------------------------------------------------
    // Golden Packet
    //--------------------------------------------------

    std::vector<uint32_t> expected =
        generate_golden_packet();

    //--------------------------------------------------
    // Compare
    //--------------------------------------------------

    bool pass = true;

    std::cout << "\n===== VERIFICATION =====\n";

    for(int i=0;i<8;i++)
    {
        packet = out_stream.read();

        uint32_t actual =
            packet.data.to_uint();

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
            std::cout << "  <-- MISMATCH";
            pass = false;
        }

        std::cout << std::endl;
    }

    //--------------------------------------------------
    // Result
    //--------------------------------------------------

    if(pass)
    {
        std::cout
            << "\n================================\n"
            << "TEST PASSED\n"
            << "================================\n";
    }
    else
    {
        std::cout
            << "\n================================\n"
            << "TEST FAILED\n"
            << "================================\n";
    }

    return pass ? 0 : 1;
}