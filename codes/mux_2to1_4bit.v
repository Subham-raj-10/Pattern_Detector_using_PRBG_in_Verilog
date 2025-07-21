`timescale 1ns / 1ps
module mux_2to1_4bit(
    input [3:0] i1,i2,
    output reg [3:0] y,
    input sel
    );
    always @(*)
    begin
        case(sel)
            1'b0: y = i1;
            1'b1: y= i2;
            default: y=4'b0000;
        endcase
    end
    
endmodule