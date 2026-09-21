`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:25:26 01/29/2022
// Design Name:   flipflop
// Module Name:   C:/Users/Saman/Documents/ISE/CPU_amir/von25/test_ff.v
// Project Name:  von25
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: flipflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_ff;

	// Inputs
	reg clk;
	reg Set;
	reg Rst;
	reg comp;
	reg grst;
	reg in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	flipflop uut (
		.clk(clk), 
		.Set(Set), 
		.Rst(Rst), 
		.comp(comp), 
		.grst(grst), 
		.in(in), 
		.out(out)
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
		Set = 0;
		Rst = 0;
		comp = 0;
		grst = 0;
		in = 0;
		#10;
		Set = 0;
		Rst = 0;
		comp = 0;
		grst = 0;
		in = 1;
		#10;
		Set = 1;
		Rst = 0;
		comp = 0;
		grst = 0;
		in = 0;
		#10;
		Set = 0;
		Rst = 0;
		comp = 1;
		grst = 0;
		in = 0;
		#10;
		Set = 0;
		Rst = 0;
		comp = 1;
		grst = 0;
		in = 0;
		#10;
		Set = 0;
		Rst = 0;
		comp = 1;
		grst = 0;
		in = 0;
		#10;
		Set = 0;
		Rst = 01;
		comp = 0;
		grst = 0;
		in = 0;


		// Wait 100 ns for global reset to finish
		// Add stimulus here

	end
      
endmodule

