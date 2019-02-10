`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:42:13 10/07/2018 
// Design Name: 
// Module Name:    fulladd 
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
module fulladd(
	 output sum,
	 output c_out,
    input a,
    input b,
    input c_in
    );
	 
	 wire s1, c1, c2;
	 
	 xor(s1, a, b);
	 and(c1, a, b);
	 
	 xor(sum, s1, c_in);
	 and(c2, s1, c_in);
	 
	 xor(c_out, c2, c1);


endmodule
