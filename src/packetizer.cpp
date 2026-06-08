#include <ap_axi_sdata.h>
#include <hls_stream.h>
#include <ap_int.h>

typedef ap_axiu<32,0,0,0> axis_t;

//--------------------------------------------------
// Sample Packing Function
//--------------------------------------------------
ap_uint<32> pack_samples(ap_uint<2> samples[16])
{
    ap_uint<32> packed_word = 0;

    for(int i = 0; i < 16; i++)
    {
        packed_word |= ((ap_uint<32>)samples[i] << (2*i));
    }

    return packed_word;
}

//--------------------------------------------------
// Packetizer
//--------------------------------------------------
void packetizer(
    hls::stream<axis_t> &in_stream,
    hls::stream<axis_t> &out_stream
)
{
#pragma HLS INTERFACE axis port=in_stream
#pragma HLS INTERFACE axis port=out_stream
#pragma HLS INTERFACE ap_ctrl_none port=return

    axis_t packet;

    ap_uint<16> timestamp = 12;
    ap_uint<8> station_id = 5;

    static ap_uint<8> frame_no = 0;

    ap_uint<32> header;

    header =
        ((ap_uint<32>)timestamp << 16) |
        ((ap_uint<32>)station_id << 8) |
        ((ap_uint<32>)frame_no);

    // Header
    packet.data = header;
    packet.last = 0;
    out_stream.write(packet);

    // 4 Payload Words
    for(int i = 0; i < 4; i++)
    {
        packet = in_stream.read();

        if(i == 3)
            packet.last = 1;
        else
            packet.last = 0;

        out_stream.write(packet);
    }

    frame_no++;
}