`timescale 1ns / 1ps
// counter based
module clock_divider #(parameter div_value = 4999)(//make div_value global
input wire clk, // 100Mhz
output reg divided_clk = 0 // 10Khz
);

// division_value = 100Mhz/(2*desired frequency) - 1

// counter
integer counter_value = 0; // 32 bit wide reg bus

always@ (posedge clk)// sensitivity list // rising edge 0-1
begin
    // keep counting until div_value
    if (counter_value == div_value )
        counter_value <= 0;// reset value
    else
        counter_value <= counter_value+1; //count up
end

//divide clock
always@(posedge clk)
begin
    if (counter_value == div_value)
        divided_clk <= ~divided_clk; //flip signal
    else
    divided_clk <= divided_clk; // store value
end
endmodule

