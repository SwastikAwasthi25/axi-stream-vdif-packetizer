#include <iostream>
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>

typedef ap_axiu<32,0,0,0> axis_t;

void packetizer(
    hls::stream<axis_t> &in_stream,
    hls::stream<axis_t> &out_stream
);

int main()
{
    hls::stream<axis_t> in_stream;
    hls::stream<axis_t> out_stream;

    axis_t packet;

    //--------------------------------------------------
    // Payload
    //--------------------------------------------------

    ap_uint<32> payloads[4] =
    {
        0xE4E4E4E4,
        0x39393939,
        0x4E4E4E4E,
        0x93939393
    };

    for(int i=0;i<4;i++)
    {
        packet.data = payloads[i];
        packet.last = 0;
        in_stream.write(packet);
    }

    //--------------------------------------------------
    // Run DUT
    //--------------------------------------------------

    packetizer(
        in_stream,
        out_stream
    );

    //--------------------------------------------------
    // Output Packet
    //--------------------------------------------------

    std::cout << "Packet Output:\n";

    for(int i=0;i<8;i++)
    {
        packet = out_stream.read();

        std::cout
            << "Word "
            << i
            << " Data = 0x"
            << std::hex
            << packet.data.to_uint()
            << std::endl;

        std::cout
            << "Word "
            << i
            << " Last = "
            << std::dec
            << packet.last.to_uint()
            << std::endl;
    }

    return 0;
}