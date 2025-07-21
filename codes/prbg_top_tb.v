`timescale 1ns / 1ps 
 
module prbg_top_tb;  
 reg [3:0] a_in, b_in;  
 reg [2:0] r1, r2, b1, b2;  
 reg clk, res, sel;  
 wire [2:0] shift_out;  
 wire detect_out;  
 top_prbg_system dut(.a_in(a_in),  
 .b_in(b_in), .r1(r1), .r2(r2),  
 .b1(b1), .b2(b2), .clk(clk),  
 .res(res), .sel(sel),  
 .shift_out(shift_out),  
 .detect_out(detect_out));  
 initial clk = 0; 
always #5 clk = ~clk;   
 initial begin  
 a_in = 4'ha;  
 b_in = 4'h7;  
 r1 = 3'd5;  
 b1 = 3'd2;  
 r2 = 3'd3;  
 b2 = 3'd6;  
 clk = 1'b1;  
 sel = 1'b0;  
 res = 1'b0;  
 #65 sel = 1'b1;  
 #55 res = 1'b1;  
 #20 res = 1'b0;  
 end  
  
endmodule 