`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:48:31 10/07/2018 
// Design Name: 
// Module Name:    counter 
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
module counter(
    output [3:0] Q,
    input clock,
    input clear
    );
	 
	 T_FF tff0(Q[0], clock, clear);
	 T_FF tff1(Q[1], Q[0], clear);
	 T_FF tff2(Q[2], Q[1], clear);
	 T_FF tff3(Q[3], Q[2], clear);


endmodule
