#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>

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
#pragma HLS INTERFACE axis port=adc_in
#pragma HLS INTERFACE axis port=out_stream

#pragma HLS INTERFACE ap_none port=epoch
#pragma HLS INTERFACE ap_none port=station_id
#pragma HLS INTERFACE ap_none port=thread_id
#pragma HLS INTERFACE ap_none port=bits_per_sample
#pragma HLS INTERFACE ap_none port=complex_data
#pragma HLS INTERFACE ap_none port=pps

#pragma HLS INTERFACE ap_ctrl_none port=return

    hls::stream<ap_uint<32>> packed_stream;
#pragma HLS STREAM variable=packed_stream depth=2048

    hls::stream<ap_uint<32>> packetizer_in;
#pragma HLS STREAM variable=packetizer_in depth=2048

    //--------------------------------------------------
    // Generate 4 payload words
    //--------------------------------------------------

    for(int i=0;i<payload_words;i++)
    {
        sample_packer(
            adc_in,
            packed_stream,
            bits_per_sample
        );

        packetizer_in.write(
    packed_stream.read()
);
    }

    //--------------------------------------------------
    // Packetizer
    //--------------------------------------------------

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
}