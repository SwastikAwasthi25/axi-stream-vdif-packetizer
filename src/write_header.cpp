#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>

typedef ap_axiu<32,0,0,0> axis_t;

void write_header(
    ap_uint<32> header[8],
    hls::stream<axis_t> &out_stream
)
{
    #pragma HLS INLINE off
    axis_t packet;

    for(int i=0;i<8;i++)
    {
#pragma HLS PIPELINE II=1

        packet.data = header[i];
        packet.last = 0;

        out_stream.write(packet);
    }
}