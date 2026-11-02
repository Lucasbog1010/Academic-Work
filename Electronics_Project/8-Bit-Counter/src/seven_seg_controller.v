`timescale 1ns / 1ps
module seven_seg_controller(
input wire refresh_clk, // 100Mhz
input wire [3:0] Ones,
input wire [3:0] Tens,
input wire [3:0] Hundreds,
output wire [3:0] anode,
output wire [7:0] cathode
    );
    
wire [1:0] refreshcounter;
wire [3:0] ONE_DIGIT;

//seven segment controller modules
refreshcounter Refreshcounter_wrapper(
.refresh_clock(refresh_clk),
.refreshcounter(refreshcounter)
);

anode_control anode_control_wrapper(
.refreshcounter(refreshcounter),
.anode(anode)
);

BCD_control BCD_control_wrapper(
.digit1(Ones),
.digit2(Tens),
.digit3(Hundreds),
.digit4(4'd0), //set digit4 to 0
.refreshcounter(refreshcounter),
.ONE_DIGIT(ONE_DIGIT)
);

 BCD_to_cathodes  BCD_to_cathodes_wrapper(
 .digit(ONE_DIGIT),
 .cathode(cathode)
 );
 
endmodule
