import struct

with open(
    r"D:\IITK\project_1\hls_integration\vdif_chain\hls\csim\build\output.vdif",
    "rb"
) as f:

    for i in range(8):
        word = struct.unpack("<I", f.read(4))[0]
        print(f"Word{i} = 0x{word:08X}")