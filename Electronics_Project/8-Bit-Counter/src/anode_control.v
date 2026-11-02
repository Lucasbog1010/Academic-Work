module anode_control(
input [1:0] refreshcounter,
output reg [3:0] anode = 0
    );
    
always@(refreshcounter)
begin  
    case(refreshcounter)
        2'b00:
        anode = 4'b1110; //anode 1 ON (right most)
        2'b01:
        anode = 4'b1101; //anode 2 ON 
        2'b10:
        anode = 4'b1011; //anode 3 ON 
        2'b11:
        anode = 4'b0111; //anode 4 ON (left most)
    endcase
end
endmodule
