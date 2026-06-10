#include "golden_model.hpp"

VDIFHeader generate_vdif_header(
    uint32_t seconds_from_epoch,
    uint32_t frame_no,
    uint32_t epoch,
    uint16_t station_id,
    uint8_t thread_id,
    uint8_t bits_per_sample,
    bool complex_data
)
{
    VDIFHeader header;

    uint32_t invalid_flag = 0;
    uint32_t legacy_mode  = 0;

    header.word0 =
        ((invalid_flag & 0x1) << 31) |
        ((legacy_mode  & 0x1) << 30) |
        (seconds_from_epoch & 0x3FFFFFFF);

    header.word1 =
        ((epoch & 0x3F) << 24) |
        (frame_no & 0xFFFFFF);

    uint32_t vdif_version = 1;
    uint32_t log2_channels = 0;
    uint32_t frame_length = 8;

    header.word2 =
        ((vdif_version & 0x7) << 29) |
        ((log2_channels & 0x1F) << 24) |
        (frame_length & 0xFFFFFF);

    header.word3 =
        ((complex_data ? 1 : 0) << 31) |
        (((bits_per_sample - 1) & 0x1F) << 26) |
        ((thread_id & 0x3FF) << 16) |
        (station_id & 0xFFFF);

    return header;
}

std::vector<uint32_t> golden_packetizer(
    uint32_t seconds_from_epoch,
    uint32_t frame_no,
    uint32_t epoch,
    uint16_t station_id,
    uint8_t thread_id,
    uint8_t bits_per_sample,
    bool complex_data,
    uint32_t payloads[4]
)
{
    std::vector<uint32_t> packet;

    VDIFHeader header =
        generate_vdif_header(
            seconds_from_epoch,
            frame_no,
            epoch,
            station_id,
            thread_id,
            bits_per_sample,
            complex_data
        );

    packet.push_back(header.word0);
    packet.push_back(header.word1);
    packet.push_back(header.word2);
    packet.push_back(header.word3);

    for(int i=0;i<4;i++)
    {
        packet.push_back(payloads[i]);
    }

    return packet;
}