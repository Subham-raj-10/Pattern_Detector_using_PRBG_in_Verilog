 `timescale 1ns / 1ps 
module prbg( 
    input [3:0] a_in,b_in, 
    input [2:0] r1,b1,r2,b2, 
    input res ,clk,sel, 
    output reg final_out 
 ); 
 wire [3:0] z1,z2; 
 pat_gen pg1(.data_in(a_in),.r(r1),.b(b1),.sel(sel),.clk(clk),.res(res),.data_out(z1)); 
 pat_gen pg2(.data_in(b_in),.r(r2),.b(b2),.sel(sel),.clk(clk),.res(res),.data_out(z2)); 
 always @ (posedge clk) 
 begin 
 if(res) 
 final_out<=1'b0; 
 else 
 final_out<=(z1>z2)?1'b1:1'b0; 
 end 
endmodule