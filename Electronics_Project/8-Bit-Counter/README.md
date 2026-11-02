# 8-Bit Counter on FPGA — Verilog & Vivado

A modular 8-bit binary counter implemented in **Verilog** for the **Digilent Nexys A7-100T** FPGA development board using **AMD/Xilinx Vivado**.

## Overview

The design increments an 8-bit value at approximately **1 count per second**, when enabled by a physical switch. A separate switch controls a **synchronous reset** (sampled on the counter clock edge). The value is converted from binary to decimal (BCD) and displayed on the board's multiplexed **four-digit seven-segment display**.

The counter naturally wraps from **255 back to 0** due to its 8-bit width.

## Architecture

`100 MHz board clock` → `clock_divider (1 Hz)` → `counter (8-bit)` → `binary_to_BCD` → `seven_seg_controller` → `anode / cathode outputs`

A second `clock_divider` produces a ~10 kHz refresh clock for the seven-segment controller. The display controller uses `refreshcounter`, `anode_control`, `BCD_control`, and `BCD_to_cathodes` modules.

## Features

- 8-bit incrementing counter with switch-controlled enable and synchronous reset
- Parameterised clock divider modules
- Sequential binary-to-BCD conversion
- Multiplexed seven-segment display driving
- Nexys A7-100T FPGA pin constraints (`.xdc`)
- Generated FPGA bitstream included (`bitstream/top.bit`)

## Repository structure

- `src/` — original Verilog RTL source files
- `constraints/` — original Nexys A7-100T XDC pin constraints
- `bitstream/top.bit` — generated bitstream from the uploaded Vivado project
- `vivado/8_bit_counterv2.xpr` — original Vivado project descriptor (may reference paths outside this cleaned repository)

## Rebuilding in Vivado

1. Create a new RTL project in Vivado targeting the **Nexys A7-100T** board / corresponding Artix-7 device.
2. Add **all** `.v` files from `src/` as design sources.
3. Add `constraints/Nexys-A7-100T-Master.xdc` as a constraints source.
4. Set `top` as the top-level module.
5. Run synthesis and implementation, then generate a bitstream.
6. Program a compatible board and use the switch and reset inputs to operate the counter.

The included `.xpr` is retained as a reference to the original project, but it may not open directly after relocating the sources. Creating a fresh project using the steps above is the most portable approach.

## Verification status

The supplied Vivado project includes implementation artifacts and a generated bitstream. **No standalone simulation testbench or waveform screenshots were present in the uploaded files**, and this portfolio has not independently rerun Vivado or verified the design on physical hardware.

## Technologies

**Verilog HDL · AMD/Xilinx Vivado · FPGA design · digital electronics · clock division · binary-to-BCD conversion · seven-segment displays**

## Attribution

The original project contains the **Digilent Nexys A7-100T master constraints file**. Check the applicable Digilent attribution and licensing terms when redistributing third-party board files.
