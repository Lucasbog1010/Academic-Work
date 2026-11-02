`timescale 1ns / 1ps
module top(
input wire clk, // 100Mhz
input wire switch,
input wire reset,
output wire [3:0] anode,
output wire [7:0] cathode
    );
    
wire refresh_clock;
wire counter_clock_signal;
wire [7:0] eight_bit_counter_value;
wire [3:0] ones;
wire [3:0] tens;
wire [3:0] hundreds;

// wrapper for the clock divider
clock_divider #(4999) refreshclock_generator(clk,refresh_clock); //10kHz clock signal
clock_divider #(49999999) counterclock_generator(clk,counter_clock_signal); //1Hz clock signal
counter eight_bit_counter (counter_clock_signal, switch,reset,eight_bit_counter_value);
binary_to_BCD Convert_Binary_to_BCD (clk,eight_bit_counter_value,ones,tens,hundreds);
seven_seg_controller SSD_Controller (refresh_clock,ones,tens,hundreds,anode,cathode);

endmodule

