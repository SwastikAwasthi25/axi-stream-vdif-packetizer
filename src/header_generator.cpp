#include <ap_int.h>

void header_generator(
    ap_uint<30> seconds_from_epoch,
    ap_uint<24> frame_no,

    ap_uint<6> epoch,
    ap_uint<16> station_id,
    ap_uint<10> thread_id,
    ap_uint<5> bits_per_sample,
    ap_uint<1> complex_data,

    ap_uint<16> payload_words,

    ap_uint<32> header[8]
)
{
#pragma HLS INLINE off

    header[0] =
        (seconds_from_epoch & 0x3FFFFFFF);

    header[1] =
        ((ap_uint<32>)epoch << 24) |
        frame_no;

    ap_uint<24> frame_length =
        ((payload_words * 4) + 32) / 8;

    header[2] =
        ((ap_uint<32>)1 << 29) |
        frame_length;

    header[3] =
        ((ap_uint<32>)complex_data << 31) |
        ((ap_uint<32>)(bits_per_sample-1) << 26) |
        ((ap_uint<32>)thread_id << 16) |
        station_id;

    header[4] = 0x01000000;
    header[5] = 0xACABFEED;
    header[6] = 0;
    header[7] = 0;
}