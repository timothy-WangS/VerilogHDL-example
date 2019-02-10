`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:49:42 10/07/2018 
// Design Name: 
// Module Name:    fulladd4 
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
module fulladd4(
	 output [3:0] sum,
	 output c_out,
	 input [3:0] a,
    input [3:0] b,
    input c_in
    );
	 
	 wire c1, c2, c3;
	 fulladd fa0(sum[0], c1, a[0], b[0], c_in);
	 fulladd fa1(sum[1], c2, a[1], b[1], c1);
	 fulladd fa2(sum[2], c3, a[2], b[2], c2);
	 fulladd fa3(sum[3], c_out, a[3], b[3], c3);
	 


endmodule
