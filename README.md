# fifo_designfunc_verification# Synchronous FIFO Design using Verilog HDL

## Project Overview
This project implements a synchronous First In, First Out (FIFO) buffer using Verilog HDL. It stores data and returns it in the order in which it was written.

## Specifications
- Data width: 8 bits
- FIFO depth: 4 entries
- Synchronous reset
- Read and write enable signals
- Full and empty status flags

## Project Files
- `fifo.v` — FIFO RTL design
- `fifo_tb.v` — Testbench for simulation

## Tools Used
- Verilog HDL
- Xilinx Vivado or ModelSim (use the tool you actually used)

## Verification
The testbench writes sample data into the FIFO and reads it back in FIFO order. Simulation results should be checked before claiming successful verification.

## Key Concepts
- Sequential logic design
- Memory arrays
- Read and write pointers
- FIFO status flags
- RTL simulation and debugging

## Future Improvements
- Test full and empty conditions
- Verify reset behavior
- Test simultaneous read and write operations
- Add waveform screenshots from simulation
