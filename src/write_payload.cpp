#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>

typedef ap_axiu<32,0,0,0> axis_t;

void write_payload(
    hls::stream<ap_uint<32>> &fifo,
    hls::stream<axis_t> &out_stream,
    ap_uint<16> payload_words
)
{
    #pragma HLS INLINE off
    axis_t packet;

    for(int i=0;i<payload_words;i++)
    {
#pragma HLS PIPELINE II=1

        packet.data = fifo.read();

        if(i == payload_words - 1)
            packet.last = 1;
        else
            packet.last = 0;

        out_stream.write(packet);
    }
}