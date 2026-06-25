#include <hls_stream.h>
#include <ap_int.h>

void axis_bram_writer(
    hls::stream<ap_uint<32>> &in_stream,
    ap_uint<32> bram[4096],
    ap_uint<16> payload_words
)
{
#pragma HLS INTERFACE ap_fifo port=in_stream
#pragma HLS INTERFACE bram port=bram
#pragma HLS INTERFACE ap_none port=payload_words
#pragma HLS INTERFACE ap_ctrl_none port=return

    for(int i=0;i<payload_words;i++)
    {
#pragma HLS PIPELINE II=1

        bram[i] = in_stream.read();
    }
}