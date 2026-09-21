`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:16:29 01/29/2022
// Design Name:   sc
// Module Name:   C:/Users/Saman/Documents/ISE/CPU_amir/von25/test_sc.v
// Project Name:  von25
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_sc;

	// Inputs
	reg rstin;
	reg clk;
	reg rsto;
	reg En;

	// Outputs
	wire [2:0] out;

	// Instantiate the Unit Under Test (UUT)
	sc uut (
		.out(out), 
		.rstin(rstin), 
		.clk(clk), 
		.rsto(rsto), 
		.En(En)
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
		rstin = 1;
		rsto = 0;
		En = 0;

		// Wait 100 ns for global reset to finish
		#10;
		rstin = 0;
		rsto = 0;
		En = 1;
        
		// Add stimulus here

	end
      
endmodule

