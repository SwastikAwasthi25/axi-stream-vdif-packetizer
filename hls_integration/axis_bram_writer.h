#ifndef AXIS_BRAM_WRITER_H
#define AXIS_BRAM_WRITER_H

#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>

typedef ap_axiu<32,0,0,0> axis_t;

void axis_bram_writer(
    hls::stream<axis_t> &in_stream,
    ap_uint<32> bram[4096],
    ap_uint<1> &packet_done
);

#endif