`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:43:22 10/07/2018 
// Design Name: 
// Module Name:    edge_dff 
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
module edge_dff(
    output q,
    output qbar,
    input d,
    input clk,
    input clear
    );
	 
	 wire s, sbar, r, rbar, cbar;
	 assign cbar = ~clear;
	 assign sbar = ~(rbar & s),
			  s = ~(sbar & cbar & ~clk),
			  r = ~(rbar & ~clk & s),
			  rbar = ~(r & cbar & d);
	 
	 assign q = ~(s & qbar),
		     qbar = ~(q & r & cbar);

endmodule
