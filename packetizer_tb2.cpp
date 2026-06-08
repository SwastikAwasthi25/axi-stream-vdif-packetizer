// #include <iostream>
// #include <hls_stream.h>
// #include <ap_axi_sdata.h>
// #include <ap_int.h>

// typedef ap_axiu<32,0,0,0> axis_t;

// void packetizer(
//     hls::stream<axis_t> &in_stream,
//     hls::stream<axis_t> &out_stream,

//     ap_uint<6> epoch,
//     ap_uint<16> station_id,
//     ap_uint<10> thread_id,
//     ap_uint<5> bits_per_sample,
//     ap_uint<1> complex_data,

//     ap_uint<1> pps
// );

// void send_packet(
//     hls::stream<axis_t> &in_stream
// )
// {
//     axis_t pkt;

//     pkt.data = 0xE4E4E4E4;
//     in_stream.write(pkt);

//     pkt.data = 0x39393939;
//     in_stream.write(pkt);

//     pkt.data = 0x4E4E4E4E;
//     in_stream.write(pkt);

//     pkt.data = 0x93939393;
//     in_stream.write(pkt);
// }

// void print_packet(
//     hls::stream<axis_t> &out_stream
// )
// {
//     for(int i=0;i<8;i++)
//     {
//         axis_t word = out_stream.read();

//         std::cout
//             << "Word "
//             << i
//             << " = 0x"
//             << std::hex
//             << word.data.to_uint()
//             << std::endl;
//     }
// }

// int main()
// {
//     hls::stream<axis_t> in_stream;
//     hls::stream<axis_t> out_stream;

//     ap_uint<6> epoch = 52;
//     ap_uint<16> station_id = 5;
//     ap_uint<10> thread_id = 0;
//     ap_uint<5> bits_per_sample = 2;
//     ap_uint<1> complex_data = 0;

//     //--------------------------------------------------
//     // Frame 0
//     //--------------------------------------------------

//     send_packet(in_stream);

//     packetizer(
//         in_stream,
//         out_stream,
//         epoch,
//         station_id,
//         thread_id,
//         bits_per_sample,
//         complex_data,
//         0
//     );

//     std::cout << "\nPacket 1\n";
//     print_packet(out_stream);

//     //--------------------------------------------------
//     // Frame 1
//     //--------------------------------------------------

//     send_packet(in_stream);

//     packetizer(
//         in_stream,
//         out_stream,
//         epoch,
//         station_id,
//         thread_id,
//         bits_per_sample,
//         complex_data,
//         0
//     );

//     std::cout << "\nPacket 2\n";
//     print_packet(out_stream);

//     //--------------------------------------------------
//     // PPS Event
//     //--------------------------------------------------

//     send_packet(in_stream);

//     packetizer(
//         in_stream,
//         out_stream,
//         epoch,
//         station_id,
//         thread_id,
//         bits_per_sample,
//         complex_data,
//         1
//     );

//     std::cout << "\nPacket 3 (PPS)\n";
//     print_packet(out_stream);

//     //--------------------------------------------------
//     // Next Frame
//     //--------------------------------------------------

//     send_packet(in_stream);

//     packetizer(
//         in_stream,
//         out_stream,
//         epoch,
//         station_id,
//         thread_id,
//         bits_per_sample,
//         complex_data,
//         0
//     );

//     std::cout << "\nPacket 4\n";
//     print_packet(out_stream);

//     return 0;
// }
#include <iostream>
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

int main()
{
    hls::stream<axis_t> in_stream;
    hls::stream<axis_t> out_stream;

    axis_t packet;

    //--------------------------------------------------
    // Real AXI Payload
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
    packet.last = 0;
    in_stream.write(packet);

    //--------------------------------------------------
    // Run Packetizer
    //--------------------------------------------------

    packetizer(
        in_stream,
        out_stream,
        52,   // epoch
        5,    // station
        0,    // thread
        2,    // bits/sample
        0,    // real
        0     // pps
    );

    //--------------------------------------------------
    // Read Packet
    //--------------------------------------------------

    std::cout << "\nVDIF Packet\n";

    for(int i=0;i<8;i++)
    {
        packet = out_stream.read();

        std::cout
            << "Word "
            << i
            << " = 0x"
            << std::hex
            << packet.data.to_uint()
            << std::endl;
    }

    return 0;
}