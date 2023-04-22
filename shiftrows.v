`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:04:52 07/24/2020 
// Design Name: 
// Module Name:    shiftrows 
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
module shiftrows(clk,data_in,data_out
    );
	 input clk;
	 input [15:0]data_in;
	 output reg [15:0]data_out=15'b0;
	 
	 always@(posedge clk)
	 begin
	 data_out[15:12]<=data_in[15:12];
	 data_out[7:4]<=data_in[7:4];
	 data_out[11:8]<=data_in[3:0];
	 data_out[3:0]<= data_in[11:8];
	 
	 end
endmodule
