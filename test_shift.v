`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:39:15 01/29/2022
// Design Name:   BarrelShiftRight
// Module Name:   C:/Users/Saman/Documents/ISE/CPU_amir/von25/test_shift.v
// Project Name:  von25
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BarrelShiftRight
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_shift;

	// Inputs
	reg [15:0] IN;

	// Outputs
	wire E;
	wire [15:0] OUT;

	// Instantiate the Unit Under Test (UUT)
	BarrelShiftRight uut (
		.IN(IN), 
		.E(E), 
		.OUT(OUT)
	);

	initial begin
		// Initialize Inputs
		IN = 16'b0000000000110101;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

