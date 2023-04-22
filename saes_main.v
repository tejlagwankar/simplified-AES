`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:54:37 04/21/2023 
// Design Name: 
// Module Name:    saes_main 
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
/*
module saes_main(
    );


endmodule
*/

module saes_main(clk,data_in,key,data_out);
input clk;
input [15:0] data_in,key;
output [15:0] data_out;

wire [15:0] key_s,key_s0,key_s1,key_s2; 
wire [15:0]r_data_out,r0_data_out,r1_data_out; 

assign r_data_out=data_in^key_s0;

saes_key_expand a0(clk,key,key_s0,key_s1,key_s2); 
round r0(clk,r_data_out,key_s1,r0_data_out);
last_round r1(clk,r0_data_out,key_s2,r1_data_out);

assign data_out=r1_data_out;
endmodule