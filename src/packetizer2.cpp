// #include <ap_axi_sdata.h>
// #include <hls_stream.h>
// #include <ap_int.h>

// typedef ap_axiu<32,0,0,0> axis_t;

// void packetizer(
//     hls::stream<axis_t> &in_stream,
//     hls::stream<axis_t> &out_stream,

//     ap_uint<6> epoch,
//     ap_uint<16> station_id,
//     ap_uint<10> thread_id,
//     ap_uint<5> bits_per_sample,
//     ap_uint<1> complex_data,

//     ap_uint<1> pps
// )
// {
// #pragma HLS INTERFACE axis port=in_stream
// #pragma HLS INTERFACE axis port=out_stream

// #pragma HLS INTERFACE ap_none port=epoch
// #pragma HLS INTERFACE ap_none port=station_id
// #pragma HLS INTERFACE ap_none port=thread_id
// #pragma HLS INTERFACE ap_none port=bits_per_sample
// #pragma HLS INTERFACE ap_none port=complex_data
// #pragma HLS INTERFACE ap_none port=pps

// #pragma HLS INTERFACE ap_ctrl_none port=return

//     hls::stream<ap_uint<32>> fifo;
// #pragma HLS STREAM variable=fifo depth=8

//     axis_t packet;

//     static ap_uint<24> frame_no = 0;
//     static ap_uint<30> seconds_from_epoch = 5000;

//     //--------------------------------------------------
//     // PPS Event
//     //--------------------------------------------------

//     if(pps == 1)
//     {
//         seconds_from_epoch++;
//         frame_no = 0;
//     }

//     //--------------------------------------------------
//     // Buffer Payload
//     //--------------------------------------------------

//     for(int i=0;i<4;i++)
//     {
// #pragma HLS PIPELINE II=1

//         packet = in_stream.read();
//         fifo.write(packet.data);
//     }

//     //--------------------------------------------------
//     // VDIF Header
//     //--------------------------------------------------

//     ap_uint<32> word0 =
//         (seconds_from_epoch & 0x3FFFFFFF);

//     ap_uint<32> word1 =
//         ((ap_uint<32>)epoch << 24) |
//         frame_no;

//     ap_uint<3> vdif_version = 1;
//     ap_uint<5> log2_channels = 0;
//     ap_uint<24> frame_length = 8;

//     ap_uint<32> word2 =
//         ((ap_uint<32>)vdif_version << 29) |
//         ((ap_uint<32>)log2_channels << 24) |
//         frame_length;

//     ap_uint<32> word3 =
//         ((ap_uint<32>)complex_data << 31) |
//         ((ap_uint<32>)(bits_per_sample - 1) << 26) |
//         ((ap_uint<32>)thread_id << 16) |
//         station_id;

//     //--------------------------------------------------
//     // Header Output
//     //--------------------------------------------------

//     packet.data = word0;
//     packet.last = 0;
//     out_stream.write(packet);

//     packet.data = word1;
//     packet.last = 0;
//     out_stream.write(packet);

//     packet.data = word2;
//     packet.last = 0;
//     out_stream.write(packet);

//     packet.data = word3;
//     packet.last = 0;
//     out_stream.write(packet);

//     //--------------------------------------------------
//     // Payload Output
//     //--------------------------------------------------

//     for(int i=0;i<4;i++)
//     {
// #pragma HLS PIPELINE II=1

//         packet.data = fifo.read();

//         if(i==3)
//             packet.last = 1;
//         else
//             packet.last = 0;

//         out_stream.write(packet);
//     }

//     frame_no++;
// }
#include <ap_axi_sdata.h>
#include <hls_stream.h>
#include <ap_int.h>

typedef ap_axiu<32,0,0,0> axis_t;
ap_uint<32> pack_2bit(ap_uint<2> samples[16]);

ap_uint<32> pack_4bit(ap_uint<4> samples[8]);

ap_uint<32> pack_8bit(ap_uint<8> samples[4]);
//ap_uint<16> payload_words; 
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
)
{
#pragma HLS INTERFACE ap_fifo port=in_stream
#pragma HLS INTERFACE axis port=out_stream

#pragma HLS INTERFACE ap_none port=epoch
#pragma HLS INTERFACE ap_none port=station_id
#pragma HLS INTERFACE ap_none port=thread_id
#pragma HLS INTERFACE ap_none port=bits_per_sample
#pragma HLS INTERFACE ap_none port=complex_data
#pragma HLS INTERFACE ap_none port=pps

#pragma HLS INTERFACE ap_ctrl_none port=return

    //--------------------------------------------------
    // Internal FIFO
    //--------------------------------------------------

    hls::stream<ap_uint<32>> fifo;
#pragma HLS STREAM variable=fifo depth=2048
    axis_t packet;

    //--------------------------------------------------
    // Counters
    //--------------------------------------------------

    static ap_uint<24> frame_no = 0;
    static ap_uint<30> seconds_from_epoch = 5000;

    //--------------------------------------------------
    // PPS
    //--------------------------------------------------

    if(pps)
    {
        seconds_from_epoch++;
        frame_no = 0;
    }

    //--------------------------------------------------
    // Read Payload From AXI Input
    //--------------------------------------------------

    for(int i=0;i<payload_words;i++)
{
#pragma HLS PIPELINE II=1

    fifo.write(
        in_stream.read()
    );
}

    //--------------------------------------------------
    // VDIF Header
    //--------------------------------------------------

    ap_uint<32> word0 =
        (seconds_from_epoch & 0x3FFFFFFF);

    ap_uint<32> word1 =
        ((ap_uint<32>)epoch << 24) |
        frame_no;

    ap_uint<3> vdif_version = 1;
    ap_uint<5> log2_channels = 0;
    ap_uint<24> frame_length =
    ((payload_words * 4) + 32) / 8;
    ap_uint<32> word2 =
        ((ap_uint<32>)vdif_version << 29) |
        ((ap_uint<32>)log2_channels << 24) |
        frame_length;

    ap_uint<32> word3 =
        ((ap_uint<32>)complex_data << 31) |
        ((ap_uint<32>)(bits_per_sample - 1) << 26) |
        ((ap_uint<32>)thread_id << 16) |
        station_id;

        ap_uint<32> word4 = 0x01000000;
ap_uint<32> word5 = 0xACABFEED;
ap_uint<32> word6 = 0x00000000;
ap_uint<32> word7 = 0x00000000;
    //--------------------------------------------------
    // Header Output
    //--------------------------------------------------

    packet.data = word0;
    packet.last = 0;
    out_stream.write(packet);

    packet.data = word1;
    packet.last = 0;
    out_stream.write(packet);

    packet.data = word2;
    packet.last = 0;
    out_stream.write(packet);

    packet.data = word3;
    packet.last = 0;
    out_stream.write(packet);

    packet.data = word4;
    packet.last = 0;
    out_stream.write(packet);

    packet.data = word5;
    packet.last = 0;
    out_stream.write(packet);

    packet.data = word6;
    packet.last = 0;
    out_stream.write(packet);

    packet.data = word7;
    packet.last = 0;
    out_stream.write(packet);

    //--------------------------------------------------
    // Payload Output
    //--------------------------------------------------

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

    frame_no++;
}