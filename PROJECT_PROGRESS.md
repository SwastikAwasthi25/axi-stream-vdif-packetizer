# VDIF FPGA Project Progress Log

## Project
VDIF Packetizer on FPGA with BRAM Integration and UDP Transmission

---

# Current Status

## Phase 1 : VDIF Packetizer ✅

Completed

- Sample Packer
- Timestamp Engine
- Header Generator
- Packet FSM
- Payload Reader
- Payload Writer
- Packetizer Integration
- VDIF Chain Top Module

Status:
- C Simulation Passed
- C Synthesis Passed
- Co-Simulation Passed
- IP Packaging Passed

---

## Phase 2 : Vivado Integration ✅

Completed

- Exported HLS IP
- Imported into Vivado
- Created Block Design
- Added VDIF IP
- Added AXI BRAM Controller
- Added Block Memory Generator
- Connected BRAM Controller to BRAM
- Design Validation Successful

---

## Phase 3 : BRAM Writer ✅ (Current Milestone)

Completed

- Created axis_bram_writer module
- Stream duplication implemented
- packetizer_in stream duplicated into:
    - packetizer
    - bram_stream
- BRAM Writer integrated into HLS project
- HLS Synthesis Successful

Current Architecture

ADC
↓
Sample Packer
↓
Packed Stream
├────────► Packetizer
│              ↓
│          AXI Stream Output
│
└────────► BRAM Writer
               ↓
          Local BRAM (HLS)

---

## Pending Work

### BRAM Integration

- Replace Local BRAM with Vivado BRAM
- Connect BRAM Writer to AXI BRAM Controller
- Verify BRAM Writes

### BRAM Reader

- Design AXI BRAM Reader
- Read Packet from BRAM

### Processing System

- Read BRAM from Zynq PS
- Transfer Packet to Software

### UDP

- UDP Packet Transmission
- Ethernet Verification

### Red Pitaya

- Receive ADC Samples
- Feed Samples into VDIF Chain
- End-to-End Hardware Testing

---

# Git Milestones

✅ Stable VDIF Packetizer

✅ Stable HLS Synthesis

✅ Vivado Block Design

✅ BRAM Writer Architecture

⬜ BRAM Hardware Integration

⬜ BRAM Reader

⬜ PS Integration

⬜ UDP Transmission

⬜ Red Pitaya Testing

---

# Notes

Current packet configuration

Payload Size:
8192 Bytes

Header:
32 Bytes

Payload Words:
2048

Current FPGA Flow

ADC
↓
VDIF
↓
BRAM
↓
PS
↓
UDP

(Target Architecture)