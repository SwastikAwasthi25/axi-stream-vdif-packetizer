#include <ap_int.h>

void timestamp_engine(
    ap_uint<1> pps,
    ap_uint<30> &seconds_from_epoch,
    ap_uint<24> &frame_no
)
{
#pragma HLS INLINE off

    static ap_uint<24> frame_counter = 0;
    static ap_uint<30> second_counter = 5000;

    if(pps)
    {
        second_counter++;
        frame_counter = 0;
    }

    seconds_from_epoch = second_counter;
    frame_no = frame_counter;

    frame_counter++;
}
