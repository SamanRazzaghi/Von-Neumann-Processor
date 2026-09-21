`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:21:50 01/29/2022
// Design Name:   decoder38
// Module Name:   C:/Users/Saman/Documents/ISE/CPU_amir/von25/ttest_decoder.v
// Project Name:  von25
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder38
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ttest_decoder;

	// Inputs
	reg [2:0] in;

	// Outputs
	wire [7:0] D;

	// Instantiate the Unit Under Test (UUT)
	decoder38 uut (
		.in(in), 
		.D(D)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#10;
		in = 1;

		// Wait 100 ns for global reset to finish
		#10;
		in = 2;

		// Wait 100 ns for global reset to finish
		#10;
		in = 3;

		// Wait 100 ns for global reset to finish
		#10;
		in = 4;

		// Wait 100 ns for global reset to finish
		#10;
		in = 5;

		// Wait 100 ns for global reset to finish
		#10;
		in = 6;
		#10;
		in = 7;

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
      
endmodule

