`timescale 1ns / 1ps 
module top_prbg_system ( 
input clk, res, sel, 
input [3:0] a_in, b_in, 
input [2:0] r1, b1, r2, b2, 
output detect_out, 
output reg[2:0] shift_out 
); 
wire prbg_output; 


prbg u_prbg (  .a_in(a_in),.b_in(b_in),.r1(r1), .b1(b1),.r2(r2), .b2(b2),.res(res),.clk(clk),.sel(sel), 
.final_out(prbg_output) ); 

pat_detect  pat(  .clk(clk),.res(res), .input_data(prbg_output),.data_detected(detect_out)); 

always @ (posedge clk) 
begin 
if (res) begin 
shift_out <= 3'b000; 
end 
else begin 
shift_out <= {shift_out[1:0],prbg_output}; 
end 
end 
endmodule