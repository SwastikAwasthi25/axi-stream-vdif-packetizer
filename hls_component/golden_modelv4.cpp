#include <iostream>
#include <vector>
#include <cstdint>

using namespace std;

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
)
{
    VDIFHeader header;

    // -------------------------
    // WORD 0
    // Bit 31    : Invalid
    // Bit 30    : Legacy Mode
    // Bits 29-0 : Seconds from Epoch
    // -------------------------

    uint32_t invalid_flag = 0;
    uint32_t legacy_mode  = 0;

    header.word0 =
        ((invalid_flag & 0x1) << 31) |
        ((legacy_mode  & 0x1) << 30) |
        (seconds_from_epoch & 0x3FFFFFFF);

    // -------------------------
    // WORD 1
    // Bits 29-24 : Epoch
    // Bits 23-0  : Frame Number
    // -------------------------

    header.word1 =
        ((epoch & 0x3F) << 24) |
        (frame_no & 0xFFFFFF);

    // -------------------------
    // WORD 2
    // Bits 31-29 : VDIF Version
    // Bits 28-24 : log2(channels)
    // Bits 23-0  : Frame Length
    // -------------------------

    uint32_t vdif_version = 1;
    uint32_t log2_channels = 0;   // 1 channel
    uint32_t frame_length = 8;    // 8 x 8 bytes = 64 bytes

    header.word2 =
        ((vdif_version & 0x7) << 29) |
        ((log2_channels & 0x1F) << 24) |
        (frame_length & 0xFFFFFF);

    // -------------------------
    // WORD 3
    // Bit 31      : Data Type
    // Bits 30-26  : Bits/Sample - 1
    // Bits 25-16  : Thread ID
    // Bits 15-0   : Station ID
    // -------------------------

    header.word3 =
        ((complex_data ? 1 : 0) << 31) |
        (((bits_per_sample - 1) & 0x1F) << 26) |
        ((thread_id & 0x3FF) << 16) |
        (station_id & 0xFFFF);

    return header;
}

vector<uint32_t> golden_packetizer(
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
    vector<uint32_t> packet;

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

    // Header
    packet.push_back(header.word0);
    packet.push_back(header.word1);
    packet.push_back(header.word2);
    packet.push_back(header.word3);

    // Payload
    for(int i = 0; i < 4; i++)
    {
        packet.push_back(payloads[i]);
    }

    return packet;
}

int main()
{
    uint32_t payloads[4] =
    {
        0xE4E4E4E4,
        0x39393939,
        0x4E4E4E4E,
        0x93939393
    };

    uint32_t epoch = 52;
    uint16_t station_id = 5;
    uint8_t thread_id = 0;
    uint8_t bits_per_sample = 2;
    bool complex_data = false;

    cout << "===== VDIF GOLDEN MODEL V4 =====" << endl;

    for(uint32_t sec = 5000; sec < 5002; sec++)
    {
        cout << endl;
        cout << "PPS EVENT -> SECOND = "
             << dec
             << sec
             << endl;

        for(uint32_t frame = 0; frame < 8; frame++)
        {
            vector<uint32_t> packet =
                golden_packetizer(
                    sec,
                    frame,
                    epoch,
                    station_id,
                    thread_id,
                    bits_per_sample,
                    complex_data,
                    payloads
                );

            cout << endl;

            cout
                << "Second "
                << dec
                << sec
                << " Frame "
                << frame
                << endl;

            for(int i = 0; i < packet.size(); i++)
            {
                cout
                    << "Word "
                    << i
                    << " = 0x"
                    << hex
                    << packet[i]
                    << endl;
            }
        }
    }

    return 0;
}