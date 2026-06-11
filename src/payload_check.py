from baseband import vdif

fh = vdif.open(
    r"D:\IITK\project_1\hls_integration\vdif_chain\hls\csim\build\output.vdif",
    "rb"
)

frame = fh.read_frame()

print("===== HEADER =====")
print(frame.header)

print("\n===== PAYLOAD =====")
print(frame.data)

fh.close()