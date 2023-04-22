`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:44:54 04/21/2023 
// Design Name: 
// Module Name:    last_round 
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

module last_round(clk,data_in,key_in,data_out);
input clk;
input [15:0]data_in,key_in;
output [15:0] data_out;

wire [15:0]sub_data_out,shift_data_out; //,mix_data_out;

subbytes a1(clk,data_in,sub_data_out);
shiftrows a2(clk,sub_data_out,shift_data_out);
//mixcolumn_2 a3(clk,shift_data_out,mix_data_out);
assign data_out=shift_data_out^key_in;

endmodule
