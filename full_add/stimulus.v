`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:13:54 10/07/2018
// Design Name:   fulladd4
// Module Name:   F:/program/Verilog/VerilogHDLexp/full_add/stimulus.v
// Project Name:  full_add
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladd4
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
	reg [3:0] a;
	reg [3:0] b;
	reg c_in;

	// Outputs
	wire [3:0] sum;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	fulladd4 uut (
		.sum(sum), 
		.c_out(c_out), 
		.a(a), 
		.b(b), 
		.c_in(c_in)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a = 4'd0; b = 4'd0; c_in = 1'b0;
		#5 a = 4'd3; b = 4'd4;
		#5 a = 4'd2; b = 4'd5;
		#5 a = 4'd9; b = 4'd9;
		#5 a = 4'd10; b = 4'd15;
		#5 a = 4'd10; b = 4'd5; c_in = 1'b1;
        
		// Add stimulus here

	end
      
endmodule

