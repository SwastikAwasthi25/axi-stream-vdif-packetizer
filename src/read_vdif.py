from baseband import vdif

fh = vdif.open(
    r"D:\IITK\project_1\hls_integration\vdif_chain\hls\csim\build\output.vdif",
    "rb"
)

frame = fh.read_frame()

print(frame.header)

fh.close()