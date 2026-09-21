`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:34:09 01/29/2022
// Design Name:   cpu
// Module Name:   C:/Users/Saman/Documents/ISE/vonvon25/von25/test_cpu.v
// Project Name:  von25
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cpu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_cpu;

	// Inputs
	reg rst;
	reg clk;
	reg FGI_IN;
	reg FGO_IN;
	reg [7:0] INPR;

	// Outputs
	wire [7:0] OPR;

	// Instantiate the Unit Under Test (UUT)
	cpu uut (
		.rst(rst), 
		.clk(clk), 
		.FGI_IN(FGI_IN), 
		.FGO_IN(FGO_IN), 
		.INPR(INPR), 
		.OPR(OPR)
	);
	always
	begin
	clk=0;
	#5;
	clk=1;
	#5;
	end
	initial begin
		// Initialize Inputs
		rst = 1;
		FGI_IN = 0;
		FGO_IN = 0;
		INPR = 0;

		// Wait 100 ns for global reset to finish
		#10;
		rst = 0;
		FGI_IN = 0;
		FGO_IN = 0;
		INPR = 0;
		


		// Wait 100 ns for global reset to finish


		// Wait 100 ns for global reset to finish
        
		// Add stimulus here

	end
      
endmodule

