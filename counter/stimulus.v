`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:51:59 10/07/2018
// Design Name:   counter
// Module Name:   F:/program/Verilog/VerilogHDLexp/counter/stimulus.v
// Project Name:  counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module stimulus;

	// Inputs
	reg clock;
	reg clear;

	// Outputs
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.Q(Q), 
		.clock(clock), 
		.clear(clear)
	);

	initial begin
		
		clear = 1'b1;
		#34 clear = 1'b0;
		#200 clear = 1'b1;
		#50 clear = 1'b0;

	end
	
	initial begin
	
		clock = 1'b0;
		forever # 10 clock = ~clock;
	
	end
	
	initial begin
	
		#400 $finish;
	
	end
      
endmodule

