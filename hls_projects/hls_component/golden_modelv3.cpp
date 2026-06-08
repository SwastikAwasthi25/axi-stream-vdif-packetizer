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

    // Temporary packing
    header.word0 = seconds_from_epoch;

    header.word1 =
        (epoch << 16) |
        frame_no;

    header.word2 = 0;

    header.word3 = station_id;

    return header;
}

vector<uint32_t> golden_packetizer(
    uint32_t seconds_from_epoch,
    uint32_t frame_no,
    uint32_t epoch,
    uint16_t station_id,
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

    packet.push_back(header.word0);
    packet.push_back(header.word1);
    packet.push_back(header.word2);
    packet.push_back(header.word3);

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

    cout << "===== VDIF GOLDEN MODEL V3 =====" << endl;

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