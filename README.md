# AXI Stream VDIF Packetizer

AXI Stream based VDIF Packetizer implemented in AMD Vitis HLS for FPGA applications.

## Project Overview

This project converts incoming AXI Stream payload data into VDIF (VLBI Data Interchange Format) packets suitable for radio astronomy and high-speed FPGA-based data acquisition systems.

The design is developed as part of an FPGA/HLS learning and implementation workflow.

---

## Features Implemented

### Core Packetizer

- AXI Stream Input Interface
- AXI Stream Output Interface
- VDIF Header Generation
- Payload Buffering using FIFO
- Frame Counter Generation
- Runtime Configurable Header Fields

### Runtime Configurable Parameters

- Epoch
- Station ID
- Thread ID
- Bits Per Sample
- Complex/Real Data Mode

### Timing Features

- PPS Synchronization
- Frame Counter Reset on PPS
- Seconds From Epoch Increment on PPS

---

## Verification Status

### C Simulation

Verified successfully in Vitis HLS.

### Test Cases Completed

- Single Packet Generation
- Multiple Sequential Frames
- Frame Counter Increment
- PPS Event Handling
- Runtime Parameter Configuration

---

## Repository Structure

```text
src/
    packetizer.cpp
    packetizer2.cpp

testbench/
    packetizer_tb.cpp
    packetizer_tb2.cpp

hls_projects/
    hls_component/
    hls_component1/
    hls_componentv2/

docs/
    reports/
    screenshots/
    outputs/

results/
    csim_logs/
```

---

## Development Progress

### Milestone 1
- Basic AXI Stream Packetizer

### Milestone 2
- VDIF Header Generation

### Milestone 3
- Runtime Configurable Fields

### Milestone 4
- PPS Synchronization
- Frame Counter Reset Logic

### Current Stage
- Functional VDIF Packetizer Verified

### Next Targets

- 2-bit Sample Packing
- 4-bit Sample Packing
- 8-bit Sample Packing
- AXI TLAST Driven Packet Generation
- RTL Co-Simulation
- IP Packaging
- Vivado Integration
- FPGA Validation

---

## Tools Used

- AMD Vitis HLS 2025.2
- Vivado
- C++
- AXI4-Stream Protocol
- VDIF Standard

---

## Author

Swastik Awasthi

IIT Kanpur Internship Project