`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:24:36 04/08/2023 
// Design Name: 
// Module Name:    round 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module round(clk,data_in,key_in,data_out);
input clk;
input [15:0]data_in,key_in;
output [15:0] data_out;

wire [15:0]sub_data_out,shift_data_out,mix_data_out;

subbytes a1(clk,data_in,sub_data_out);
shiftrows a2(clk,sub_data_out,shift_data_out);
mixcolumn_2 a3(clk,shift_data_out,mix_data_out);
assign data_out=mix_data_out^key_in;

endmodule

/*
module round(clk,data_in,key_in,data_out);
input clk;
input [127:0]data_in,key_in;
output [127:0] data_out;

wire [127:0]sub_data_out,shift_data_out,mix_data_out; 

subbytes a1(clk,data_in,sub_data_out);
shiftrows a2(clk,sub_data_out,shift_data_out);
mixcolumn a3(clk,shift_data_out,mix_data_out);
assign data_out=mix_data_out^key_in;
endmodule
*/