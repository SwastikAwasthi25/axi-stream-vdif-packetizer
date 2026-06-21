#include <ap_axi_sdata.h>
#include <hls_stream.h>
#include <ap_int.h>

typedef ap_axiu<32,0,0,0> axis_t;

void timestamp_engine(
    ap_uint<1> pps,
    ap_uint<30> &seconds_from_epoch,
    ap_uint<24> &frame_no
);

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
);

void packet_fsm(
    ap_uint<2> current_state,
    ap_uint<1> start_packet,
    ap_uint<1> header_done,
    ap_uint<1> payload_done,
    ap_uint<2> &next_state
);
void read_payload(
    hls::stream<ap_uint<32>> &in_stream,
    hls::stream<ap_uint<32>> &fifo,
    ap_uint<16> payload_words
);

void write_header(
    ap_uint<32> header[8],
    hls::stream<axis_t> &out_stream
);

void write_payload(
    hls::stream<ap_uint<32>> &fifo,
    hls::stream<axis_t> &out_stream,
    ap_uint<16> payload_words
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
)
{
     #pragma HLS DATAFLOW
#pragma HLS INTERFACE ap_fifo port=in_stream
#pragma HLS INTERFACE axis port=out_stream

#pragma HLS INTERFACE ap_none port=epoch
#pragma HLS INTERFACE ap_none port=station_id
#pragma HLS INTERFACE ap_none port=thread_id
#pragma HLS INTERFACE ap_none port=bits_per_sample
#pragma HLS INTERFACE ap_none port=complex_data
#pragma HLS INTERFACE ap_none port=pps

#pragma HLS INTERFACE ap_ctrl_hs port=return
    hls::stream<ap_uint<32>> fifo;
#pragma HLS STREAM variable=fifo depth=8192

    

    //--------------------------------------------------
    // Timestamp
    //--------------------------------------------------

    ap_uint<24> frame_no;
    ap_uint<30> seconds_from_epoch;

    timestamp_engine(
        pps,
        seconds_from_epoch,
        frame_no
    );

    //--------------------------------------------------
    // FSM
    //--------------------------------------------------
//--------------------------------------------------
// FSM
//--------------------------------------------------

static ap_uint<2> fsm_state = 0;
ap_uint<2> next_state;
packet_fsm(
    fsm_state,
    1,
    0,
    0,
    next_state
);

fsm_state = next_state;
    //--------------------------------------------------
    // Counters
    //--------------------------------------------------

    // static ap_uint<16> payload_counter = 0;
    // static ap_uint<4> header_counter = 0;

    //--------------------------------------------------
    // Header
    //--------------------------------------------------

    ap_uint<32> header[8];

    header_generator(
        seconds_from_epoch,
        frame_no,
        epoch,
        station_id,
        thread_id,
        bits_per_sample,
        complex_data,
        payload_words,
        header
    );

    //--------------------------------------------------
    // Read Payload
    //--------------------------------------------------

   read_payload(
    in_stream,
    fifo,
    payload_words
);
    //--------------------------------------------------
    // FSM -> HEADER
    //--------------------------------------------------

    //--------------------------------------------------
    // Header Output
    //--------------------------------------------------

    write_header(
    header,
    out_stream
);
    //--------------------------------------------------
    // FSM -> PAYLOAD
    //--------------------------------------------------
packet_fsm(
    fsm_state,
    0,
    1,
    0,
    next_state
);

fsm_state = next_state;

    //--------------------------------------------------
    // Payload Output
    //--------------------------------------------------

  write_payload(
    fifo,
    out_stream,
    payload_words
);

    //--------------------------------------------------
    // FSM -> IDLE
    //--------------------------------------------------

    packet_fsm(
    fsm_state,
    0,
    0,
    1,
    next_state
);

fsm_state = next_state;
    //--------------------------------------------------
    // Reset Counters
    //--------------------------------------------------

    // payload_counter = 0;
    // header_counter = 0;
}