#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>
#include <iostream>
typedef ap_axiu<32,0,0,0> axis_t;

//--------------------------------------------------
// Existing Functions
//--------------------------------------------------

void sample_packer(
    hls::stream<ap_uint<8>> &adc_in,
    hls::stream<ap_uint<32>> &packed_out,
    ap_uint<5> bits_per_sample
);
void packetizer( 
    hls::stream<ap_uint<32>> &in_stream,
    hls::stream<axis_t> &out_stream,
    ap_uint<6> epoch,
    ap_uint<16> station_id,
    ap_uint<10> thread_id,
    ap_uint<5> bits_per_sample,
    ap_uint<1> complex_data,
    ap_uint<1> pps,
    ap_uint<16> payload_words
);
void axis_bram_writer(
    hls::stream<ap_uint<32>> &in_stream,
    ap_uint<32> bram[4096],
    ap_uint<16> payload_words
);

//--------------------------------------------------
// Top Wrapper
//--------------------------------------------------

void vdif_chain(
    
    hls::stream<ap_uint<8>> &adc_in,
    hls::stream<axis_t> &out_stream,

    ap_uint<6> epoch,
    ap_uint<16> station_id,
    ap_uint<10> thread_id,
    ap_uint<5> bits_per_sample,
    ap_uint<1> complex_data,
    ap_uint<1> pps,

    ap_uint<16> payload_words
)
{
    std::cout << "VDIF ENTER\n";


#pragma HLS INTERFACE axis port=adc_in
#pragma HLS INTERFACE axis port=out_stream
#pragma HLS DATAFLOW

#pragma HLS INTERFACE ap_none port=epoch
#pragma HLS INTERFACE ap_none port=station_id
#pragma HLS INTERFACE ap_none port=thread_id
#pragma HLS INTERFACE ap_none port=bits_per_sample
#pragma HLS INTERFACE ap_none port=complex_data
#pragma HLS INTERFACE ap_none port=pps

#pragma HLS INTERFACE ap_ctrl_hs port=return

    hls::stream<ap_uint<32>> packed_stream;
#pragma HLS STREAM variable=packed_stream depth=2048

    hls::stream<ap_uint<32>> packetizer_in;
#pragma HLS STREAM variable=packetizer_in depth=2048
hls::stream<ap_uint<32>> bram_stream;
#pragma HLS STREAM variable=bram_stream depth=2048
ap_uint<32> bram[4096];
#pragma HLS BIND_STORAGE variable=bram type=ram_1p impl=bram
    std::cout << "BEFORE PACKING LOOP\n";

    for(int i=0;i<payload_words;i++)
    {
        if(i==0)
            std::cout << "FIRST ITERATION\n";

        sample_packer(
            adc_in,
            packed_stream,
            bits_per_sample
        );

        ap_uint<32> word = packed_stream.read();

packetizer_in.write(word);
bram_stream.write(word);
        if(i==payload_words-1)
            std::cout << "LAST ITERATION\n";
    }

    std::cout << "PACKING DONE\n";

    std::cout << "BEFORE PACKETIZER\n";

    packetizer(
        packetizer_in,
        out_stream,
        epoch,
        station_id,
        thread_id,
        bits_per_sample,
        complex_data,
        pps,
        payload_words
    );
    axis_bram_writer(
    bram_stream,
    bram,
    payload_words
);
    std::cout << "AFTER PACKETIZER\n";
}