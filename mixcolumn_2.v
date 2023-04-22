`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:29:38 04/07/2023 
// Design Name: 
// Module Name:    mixcolumn_2 
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
module mixcolumn_2(clk,data_in,data_out);
input clk;
input [15:0] data_in;
output [15:0] data_out;

wire [3:0] s0,s1,s2,s3;
wire [7:0] b,c;
//wire [3:0] tmp1,tmp2,tmp3,tmp4;

/*
assign tmp1 = data_in[15:12];
assign tmp2 = data_in[11:8];
assign tmp3 = data_in[7:4];
assign tmp4 = data_in[3:0];
*/

assign b = data_in[15:8];
assign c = data_in[7:0];

assign s0 = {b[7]^b[1],b[6]^b[3]^b[0],b[5]^b[3]^b[2],b[4]^b[2]};
assign s1 = {b[5]^b[3],b[7]^b[4]^b[2],b[7]^b[6]^b[1],b[6]^b[0]};
assign s2 = {c[7]^c[1],c[6]^c[3]^c[0],c[5]^c[3]^c[2],c[4]^c[2]};
assign s3 = {c[5]^c[3],c[7]^c[4]^c[2],c[7]^c[6]^c[1],c[6]^c[0]};

assign data_out = {s0,s1,s2,s3};
endmodule
/*
mul_4 m1 (clk,tmp1,m4_tmp_out1);
mul_4 m2 (clk,tmp2,m4_tmp_out2);
mul_4 m3 (clk,tmp3,m4_tmp_out3);
mul_4 m4 (clk,tmp4,m4_tmp_out4);

assign s0 = tmp1 ^ m4_tmp_out3;
assign s1 = tmp2 ^ m4_tmp_out4;
assign s2 = m4_tmp_out1 ^ tmp3;
assign s3 = m4_tmp_out2 ^ tmp4;

assign data_out = {s0,s1,s2,s3};
endmodule

module mul_4(clk, data_in, data_out);
  input clk;
  input [3:0] data_in;
  output reg [3:0] data_out;
  reg[3:0] temp;

  always @(posedge clk) begin
    temp = {data_in[2:0], 1'b0};
	 
    if (data_in[3] == 1'b1) begin
      temp = temp ^ 4'b0011;
    end

    data_out = {temp[2:0], 1'b0};

    if (temp[3] == 1'b1) begin
      data_out = data_out ^ 4'b0011;
    end
  end
endmodule
*/