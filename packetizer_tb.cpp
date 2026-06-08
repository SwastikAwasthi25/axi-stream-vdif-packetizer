#include <iostream>
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>

typedef ap_axiu<32,0,0,0> axis_t;

// DUT
void packetizer(
    hls::stream<axis_t> &in_stream,
    hls::stream<axis_t> &out_stream
);

// Packing Function
ap_uint<32> pack_samples(ap_uint<2> samples[16]);

int main()
{
    //--------------------------------------------------
    // PART 1 : Test pack_samples()
    //--------------------------------------------------

    ap_uint<2> samples[16];

    for(int i = 0; i < 16; i++)
    {
        samples[i] = i % 4;
    }

    ap_uint<32> packed = pack_samples(samples);

    std::cout << "======================" << std::endl;
    std::cout << "PACKING TEST" << std::endl;
    std::cout << "Packed Word = 0x"
              << std::hex
              << packed.to_uint()
              << std::endl;
    std::cout << "======================" << std::endl;

    //--------------------------------------------------
    // PART 2 : Packetizer Test
    //--------------------------------------------------

    hls::stream<axis_t> in_stream;
    hls::stream<axis_t> out_stream;

    axis_t input_packet;

    input_packet.data = 0x11111111;
    input_packet.last = 0;
    in_stream.write(input_packet);

    input_packet.data = 0x22222222;
    input_packet.last = 0;
    in_stream.write(input_packet);

    input_packet.data = 0x33333333;
    input_packet.last = 0;
    in_stream.write(input_packet);

    input_packet.data = 0x44444444;
    input_packet.last = 0;
    in_stream.write(input_packet);

    packetizer(in_stream, out_stream);

    std::cout << "\nExpected Header:" << std::endl;
    std::cout << "0x"
              << std::hex
              << ((12 << 16) | (5 << 8) | 0)
              << std::endl;

    std::cout << "\nActual Output:\n";

    for(int i = 0; i < 5; i++)
    {
        axis_t word = out_stream.read();

        std::cout
            << "Word " << i
            << " Data = 0x"
            << std::hex
            << word.data.to_uint()
            << std::endl;

        std::cout
            << "Word " << i
            << " Last = "
            << std::dec
            << word.last.to_uint()
            << std::endl;
    }

    return 0;
}