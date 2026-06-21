#include <ap_int.h>

enum PacketState
{
    IDLE    = 0,
    HEADER  = 1,
    PAYLOAD = 2
};

void packet_fsm(
    ap_uint<2> current_state,
    ap_uint<1> start_packet,
    ap_uint<1> header_done,
    ap_uint<1> payload_done,
    ap_uint<2> &next_state
)
{
#pragma HLS INLINE off

    switch(current_state)
    {
        case IDLE:

            if(start_packet)
                next_state = HEADER;
            else
                next_state = IDLE;

            break;

        case HEADER:

            if(header_done)
                next_state = PAYLOAD;
            else
                next_state = HEADER;

            break;

        case PAYLOAD:

            if(payload_done)
                next_state = IDLE;
            else
                next_state = PAYLOAD;

            break;

        default:

            next_state = IDLE;
            break;
    }
}