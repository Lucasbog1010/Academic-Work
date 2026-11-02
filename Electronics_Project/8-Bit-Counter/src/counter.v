`timescale 1ns / 1ps

module counter(
    input wire counter_clock_signal,
    input wire switch, //use switch to turn on and off
    input wire reset,
    output reg [7:0] counter = 0 //8 bit counter output
    );
    
    always@(posedge counter_clock_signal) begin
         
         if(reset == 1) begin
             counter <= 0;
         end  
         else begin 
              if (switch==0) 
                 counter <= counter;
         
              if (switch == 1) 
                 counter <= counter+1;
         end     
    end
  
endmodule