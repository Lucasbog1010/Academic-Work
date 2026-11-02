## Theremin – Design and Implementation of an Electronic Instrument

**Course:** Analog and Digital Electronics (LPHYS2101)  
**Academic year:** 2024–2025  
**Technologies:** Analog circuit design, operational amplifiers, Verilog, FPGA (Nexys A7), electronic instrumentation.

### Project Overview

Design and implementation of a contactless musical instrument (theremin), whose pitch and volume are controlled by the position of the player's hands relative to two antennas.

The project involved the development of both analog and digital electronic systems to generate, process and reproduce audio signals.

### Analog Electronics

The analog circuit was designed to convert variations in antenna capacitance into audible sound. Its main components include:

- **Oscillator circuits:** Design of fixed-frequency and variable-frequency relaxation oscillators using operational amplifiers.
- **Signal processing:** Implementation of low-pass filters and a mixer to generate a beat frequency from the two oscillator signals.
- **Envelope detection:** Conversion of the high-frequency beat signal into an audible-frequency signal.
- **Audio amplification:** Design of an inverting amplifier for volume control and a diode-biased Class B push-pull power amplifier to drive an 8 Ω speaker.

### Digital Electronics

A digital subsystem was developed in Verilog and implemented on a Nexys A7 FPGA board. It includes:

- Clock dividers and counters.
- Seven-segment display controller.
- Binary-to-BCD converter.
- An 8-bit counter and timer displayed on a seven-segment display.

### Skills Developed

Analog circuit design, signal processing, operational amplifier applications, transistor-based power amplification, Verilog programming, FPGA implementation, circuit testing and experimental validation.
