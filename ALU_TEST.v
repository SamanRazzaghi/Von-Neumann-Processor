`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:31:51 01/29/2022
// Design Name:   ALU
// Module Name:   C:/Users/Saman/Documents/ISE/CPU_amir/von25/ALU_TEST.v
// Project Name:  von25
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_TEST;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg C;
	reg [2:0] FUN;

	// Outputs
	wire [15:0] OUT;
	wire E;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B),
		.C(C),
		.OUT(OUT), 
		.FUN(FUN), 
		.E(E)
	);

	initial begin
		// Initialize Inputs
		A = 5;
		B = 3;
		C=0;
		FUN = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A = 16'h4000;
		B = 1;
		C=1;
		FUN = 5;

		// Wait 100 ns for global reset to finish
		
		// Add stimulus here

	end
      
endmodule

