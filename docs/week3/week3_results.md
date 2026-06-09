\# Week 3 - Sample Packing Logic



\## Objective



Implement sample packing logic for VDIF payload generation.



\## Features Implemented



\- 2-bit sample packing

\- 4-bit sample packing

\- 8-bit sample packing

\- AXI Stream input interface

\- AXI Stream output interface

\- HLS synthesizable design



\## Verification Results



\### 2-bit Mode



Input Samples:

0 1 2 3 repeated



Output:

0xE4E4E4E4



\### 4-bit Mode



Input Samples:

0 1 2 3 4 5 6 7



Output:

0x76543210



\### 8-bit Mode



Input Samples:

0 1 2 3



Output:

0x03020100



\## Synthesis Results



Target Device:

xc7a12tcpg238-1



Estimated Fmax:

194.38 MHz



Pipeline II:

1



Status:

PASS

