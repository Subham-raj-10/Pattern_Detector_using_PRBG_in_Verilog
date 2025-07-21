 `timescale 1ns / 1ps 
module pat_gen( 
    input [2:0] r,b, 
    input sel,clk,res, 
    input [3:0] data_in, 
    output reg [3:0] data_out 
    ); 
    wire [3:0] w1; 
    reg [3:0] w2; 
    reg [7:0] temp=4'd0; 
    mux_2to1_4bit mux(.i1(data_in),.i2(data_out),.sel(sel),.y(w1)); 
    always @(posedge clk) 
    begin 
        if(res) 
            begin 
            data_out <= 4'b0000; 
            end 
        else 
            begin 
                w2 <= w1<<r; 
                temp = w1 + w2 + b; 
                data_out <= temp[3:0]; 
            end 
    end 
endmodule 
