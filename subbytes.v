`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:10:50 07/24/2020 
// Design Name: 
// Module Name:    subbytes 
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
module subbytes(clk,data,s_data_out);
	 input clk;
	 input [15:0]data;
	 output [15:0]s_data_out;

	 //wire [15:0] tmp_out;

	  sbox q0( data[15:12],s_data_out[15:12] );
     sbox q1( data[11:8],s_data_out[11:8] );
     sbox q2( data[7:4],s_data_out[7:4] );
     sbox q3( data[3:0],s_data_out[3:0] );


/*     		
	  sbox q0( data[15:12],tmp_out[15:12] );
     sbox q1( data[11:8],tmp_out[11:8] );
     sbox q2( data[7:4],tmp_out[7:4] );
     sbox q3( data[3:0],tmp_out[3:0] );

	always@(posedge clk)
	begin
	
	 s_data_out<=tmp_out;
	end
*/

endmodule
