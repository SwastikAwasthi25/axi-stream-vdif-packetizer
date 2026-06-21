#include <hls_stream.h>
#include <ap_int.h>

void read_payload(
    hls::stream<ap_uint<32>> &in_stream,
    hls::stream<ap_uint<32>> &fifo,
    ap_uint<16> payload_words
)
{
    #pragma HLS INLINE off
    for(int i=0;i<payload_words;i++)
    {
        
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1024 max=65536

        fifo.write(
            in_stream.read()
        );
    }
}