`timescale 1ns / 1ps 
module pat_detect( 
input clk,res,input_data, 
output reg data_detected 
); 
reg [2:0] shift_reg; 
always @ (posedge clk) 
begin 
    if (res) begin 
        data_detected <=1'b0; 
        shift_reg <= 3'b000; 
    end 
  else begin 
    shift_reg <= {shift_reg[1:0],input_data}; 
     
 if ({shift_reg[1:0], input_data} == 3'b101) begin 
    data_detected <= 1'b1; 
end 
else begin 
    data_detected <= 1'b0; 
end 
 
    end 
    end 
endmodule