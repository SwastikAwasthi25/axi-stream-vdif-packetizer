from baseband import vdif

fh = vdif.open(
    r"D:\IITK\project_1\hls_integration\vdif_chain\hls\csim\build\output.vdif",
    "rs"
)

frame = fh.read_frame()

print("===== VDIF HEADER =====")
print(frame.header)

fh.close()