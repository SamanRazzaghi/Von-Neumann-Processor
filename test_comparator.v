`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:10:02 01/28/2022
// Design Name:   comparator
// Module Name:   C:/Users/Saman/Documents/ISE/CPU_amir/von25/test_comparator.v
// Project Name:  von25
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_comparator;

	// Inputs
	reg [15:0] inreg;
	reg in;
	reg [1:0] mod;

	// Outputs
	wire Z;

	// Instantiate the Unit Under Test (UUT)
	comparator uut (
		.inreg(inreg), 
		.in(in), 
		.mod(mod), 
		.Z(Z)
	);

	initial begin
		// Initialize Inputs
		inreg = 5;
		in = 0;
		mod = 0;
		#50;
				inreg = 5;
		in = 0;
		mod = 0;
		#50;
				inreg = 1;
		in = 0;
		mod = 0;
		#50;
				inreg = 1;
		in = 0;
		mod = 0;
		#50;
		inreg = 5;
		in = 0;
		mod = 1;
		#50;
				inreg = 5;
		in = 0;
		mod = 1;
		#50;
				inreg = 0;
		in = 0;
		mod = 1;
		#50;
				inreg = 1;
		in = 0;
		mod = 1;
		#50;
				inreg = 0;
		in = 1;
		mod = 2;
		#50;
				inreg = 0;
		in = 1;
		mod = 2;
		#50;
				inreg = 0;
		in = 0;
		mod = 3;
		#50;
				inreg = 0;
		in = 0;
		mod = 3;
		#50;
        
		// Add stimulus here

	end
      
endmodule

