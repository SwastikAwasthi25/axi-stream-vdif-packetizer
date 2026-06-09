#include <hls_stream.h>
#include <ap_int.h>

void sample_packer(
    hls::stream<ap_uint<8>> &adc_in,
    hls::stream<ap_uint<32>> &packed_out,
    ap_uint<5> bits_per_sample
)
{
#pragma HLS INTERFACE axis port=adc_in
#pragma HLS INTERFACE axis port=packed_out

#pragma HLS INTERFACE ap_none port=bits_per_sample
#pragma HLS INTERFACE ap_ctrl_none port=return

    ap_uint<32> word = 0;

    if(bits_per_sample == 2)
    {
        for(int i=0;i<16;i++)
        {
#pragma HLS PIPELINE II=1

            ap_uint<2> sample = adc_in.read();
            word.range((2*i)+1,(2*i)) = sample;
        }

        packed_out.write(word);
    }

    else if(bits_per_sample == 4)
    {
        for(int i=0;i<8;i++)
        {
#pragma HLS PIPELINE II=1

            ap_uint<4> sample = adc_in.read();
            word.range((4*i)+3,(4*i)) = sample;
        }

        packed_out.write(word);
    }

    else if(bits_per_sample == 8)
    {
        for(int i=0;i<4;i++)
        {
#pragma HLS PIPELINE II=1

            ap_uint<8> sample = adc_in.read();
            word.range((8*i)+7,(8*i)) = sample;
        }

        packed_out.write(word);
    }
}