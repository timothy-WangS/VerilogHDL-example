`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:42:54 09/16/2018
// Design Name:   calc
// Module Name:   F:/program/Verilog/VerilogHDLexp/calc/calc_sim.v
// Project Name:  calc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: calc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module calc_sim;

	// Inputs
	reg comA;
	reg comB;

	// Outputs
	wire [7:0] outC;

	// Instantiate the Unit Under Test (UUT)
	calc uut (
		.comA(comA), 
		.comB(comB), 
		.outC(outC)
	);

	initial begin
		// Initialize Inputs
		comA = 0;
		comB = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#10 comA = 1; comB = 1;
		#10 comA = 0; comB = 1;
		#10 comA = 1; comB = 0;
		#10 comA = 0; comB = 0;

	end
      
endmodule

