`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:53:24 07/24/2020 
// Design Name: 
// Module Name:    sbox 
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
module sbox(data,dout);
	 input [3:0] data;
	 output reg [3:0] dout;
	 
	 always@(data)
	 begin
	 
	 
	 case (data)          //substitution table
		 4'b0000				  : dout <= 4'b1001;
		 4'b0001				  : dout <= 4'b0100;
		 4'b0010				  : dout <= 4'b1010;
		 4'b0011				  : dout <= 4'b1011;
		 
		 4'b0100				  : dout <= 4'b1101;
		 4'b0101				  : dout <= 4'b0001;
		 4'b0110				  : dout <= 4'b1000;
		 4'b0111				  : dout <= 4'b0101;
		 
		 4'b1000				  : dout <= 4'b0110;
		 4'b1001				  : dout <= 4'b0010;
		 4'b1010				  : dout <= 4'b0000;
		 4'b1011				  : dout <= 4'b0011;
		 
		 4'b1100				  : dout <= 4'b1100;
		 4'b1101				  : dout <= 4'b1110;
		 4'b1110				  : dout <= 4'b1111;
		 4'b1111				  : dout <= 4'b0111;
       default            : dout <= 4'b0000;
endcase
end

endmodule
