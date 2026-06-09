#include <iostream>
#include <hls_stream.h>
#include <ap_int.h>

using namespace std;

void sample_packer(
    hls::stream<ap_uint<8>> &adc_in,
    hls::stream<ap_uint<32>> &packed_out,
    ap_uint<5> bits_per_sample
);

int main()
{
    hls::stream<ap_uint<8>> adc_in;
    hls::stream<ap_uint<32>> packed_out;

    //--------------------------------------------------
    // 2-bit Test
    //--------------------------------------------------

    for(int i=0;i<16;i++)
    {
        adc_in.write(i % 4);
    }

    sample_packer(
        adc_in,
        packed_out,
        2
    );

    ap_uint<32> word2 =
        packed_out.read();

    cout << "\n2-bit Result = 0x"
         << hex
         << word2
         << endl;

    //--------------------------------------------------
    // 4-bit Test
    //--------------------------------------------------

    for(int i=0;i<8;i++)
    {
        adc_in.write(i);
    }

    sample_packer(
        adc_in,
        packed_out,
        4
    );

    ap_uint<32> word4 =
        packed_out.read();

    cout << "4-bit Result = 0x"
         << hex
         << word4
         << endl;

    //--------------------------------------------------
    // 8-bit Test
    //--------------------------------------------------

    for(int i=0;i<4;i++)
    {
        adc_in.write(i);
    }

    sample_packer(
        adc_in,
        packed_out,
        8
    );

    ap_uint<32> word8 =
        packed_out.read();

    cout << "8-bit Result = 0x"
         << hex
         << word8
         << endl;

    return 0;
}