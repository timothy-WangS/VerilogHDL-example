`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:27:57 09/16/2018 
// Design Name: 
// Module Name:    calc 
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
module calc(comA, comB, outC);
    input comA, comB;
    output [7:0] outC;
    and(outC[0], comA, comB);
	 or(outC[1], comA, comB);
	 not(outC[2], comA);
	 xor(outC[3], comA, comB);  // 异或
	 xnor(outC[4], comA, comB);  // 同或
	 nor(outC[5], comA, comB);  // 或非
	 nand(outC[6], comA, comB);  // 与非
	 
endmodule
