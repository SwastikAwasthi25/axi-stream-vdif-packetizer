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
    uint16_t station_id
)
{
    VDIFHeader header;

    header.word0 =
        ((seconds_from_epoch & 0x3FFFFFFF) << 2) |
        (frame_no & 0x3);

    header.word1 =
        ((epoch & 0xFFFF) << 16) |
        (station_id & 0xFFFF);

    header.word2 = 0;
    header.word3 = 0;

    return header;
}

vector<uint32_t> golden_packetizer(
    uint32_t seconds_from_epoch,
    uint16_t station_id,
    uint32_t frame_no,
    uint32_t epoch,
    uint32_t payloads[4]
)
{
    vector<uint32_t> packet;

    VDIFHeader header =
        generate_vdif_header(
            seconds_from_epoch,
            frame_no,
            epoch,
            station_id
        );

    // 4 Header Words
    packet.push_back(header.word0);
    packet.push_back(header.word1);
    packet.push_back(header.word2);
    packet.push_back(header.word3);

    // 4 Payload Words
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

    vector<uint32_t> packet =
        golden_packetizer(
            5000, // seconds_from_epoch
            5,    // station_id
            0,    // frame_no
            52,   // epoch
            payloads
        );

    cout << "Golden VDIF Packet" << endl;

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

    return 0;
}