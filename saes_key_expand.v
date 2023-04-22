`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:27:55 04/20/2023 
// Design Name: 
// Module Name:    saes_key_expand 
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

module saes_key_expand(clk,key,key_s0,key_s1,key_s2);
input [15:0] key;
input clk;
output [15:0] key_s0,key_s1,key_s2;

reg [7:0] w0,w1,w2,w3, w4, w5;
wire [3:0] sub0,sub1,sub2,sub3;

//wire	[31:0]	subword, subword2,subword3,subword4,subword5, subword6, subword7,subword8,subword9,subword10;			
//wire	[7:0]	rcon, rcon2,rcon3,rcon4,rcon5, rcon6, rcon7,rcon8,rcon9,rcon10;	

always @*
begin
 
w0 =  key[15:8];
w1 =  key[7:0];

w2 =  w0 ^ 8'b10000000 ^ {sub0,sub1};
w3 =  w2 ^ w1;

w4 =  w2 ^ 8'b00110000 ^ {sub2,sub3};
w5 =  w4 ^ w3;

end

sbox u0(	w1[3:0],sub0);
sbox u1(	w1[7:4],sub1);
sbox u2(	w3[3:0],sub2);
sbox u3(	w3[7:4],sub3);

assign key_s0={w0,w1};
assign key_s1={w2,w3};
assign key_s2={w4,w5};

endmodule
