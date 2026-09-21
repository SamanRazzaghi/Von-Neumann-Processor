`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:28:40 01/30/2022
// Design Name:   reg16
// Module Name:   C:/Users/Saman/Documents/ISE/vonvon25/von25/test_AC.v
// Project Name:  von25
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: reg16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_AC;

	// Inputs
	reg clk;
	reg Load;
	reg Rst;
	reg FI;
	reg grst;
	reg FO;
	reg [7:0] In;
	reg En;
	reg [15:0] Data;

	// Outputs
	wire [7:0] outreg;
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	reg16 uut (
		.clk(clk), 
		.Load(Load), 
		.Rst(Rst), 
		.FI(FI), 
		.grst(grst), 
		.FO(FO), 
		.In(In), 
		.outreg(outreg), 
		.En(En), 
		.Data(Data), 
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
		Load = 0;
		Rst = 0;
		FI = 1;
		grst = 0;
		FO = 0;
		In = 5;
		En = 0;
		Data = 0;

		// Wait 100 ns for global reset to finish
		#100;
		Load = 0;
		Rst = 0;
		FI = 0;
		grst = 0;
		FO = 1;
		In = 0;
		En = 0;
		Data = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

