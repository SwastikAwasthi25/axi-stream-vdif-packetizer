#ifndef GOLDEN_MODEL_HPP
#define GOLDEN_MODEL_HPP

#include <vector>
#include <cstdint>

struct VDIFHeader
{
    uint32_t word0;
    uint32_t word1;
    uint32_t word2;
    uint32_t word3;
};

VDIFHeader generate_vdif_header(
    uint32_t seconds_from_epoch,
    uint32_t frame_no,
    uint32_t epoch,
    uint16_t station_id,
    uint8_t thread_id,
    uint8_t bits_per_sample,
    bool complex_data
);

std::vector<uint32_t> golden_packetizer(
    uint32_t seconds_from_epoch,
    uint32_t frame_no,
    uint32_t epoch,
    uint16_t station_id,
    uint8_t thread_id,
    uint8_t bits_per_sample,
    bool complex_data,
    uint32_t payloads[4]
);

#endif