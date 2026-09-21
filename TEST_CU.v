`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:06:37 01/29/2022
// Design Name:   ControlUnit
// Module Name:   C:/Users/Saman/Documents/ISE/CPU_amir/von25/TEST_CU.v
// Project Name:  von25
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ControlUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_CU;

	// Inputs
	reg clk;
	reg rstout;
	reg [15:0] IR;
	reg [15:0] OUT_AC;
	reg [15:0] OUT_DR;
	reg E;
	reg IEN;
	reg FGI;
	reg FGO;

	// Outputs
	wire WE;
	wire Load_AR;
	wire Load_IR;
	wire Load_DR;
	wire Load_AC;
	wire Load_TR;
	wire Load_PC;
	wire Load_Out;
	wire EN_PC;
	wire EN_AR;
	wire EN_DR;
	wire EN_AC;
	wire Rst_FGI;
	wire Rst_FGO;
	wire Rst_IEN;
	wire Rst_AC;
	wire Rst_E;
	wire Rst_PC;
	wire Rst_AR;
	wire INP_AC;
	wire Set_IEN;
	wire [2:0] FUN_ALU;
	wire [2:0] Select_com;
	wire comp_E;

	// Instantiate the Unit Under Test (UUT)
	ControlUnit uut (
		.clk(clk), 
		.rstout(rstout), 
		.IR(IR), 
		.OUT_AC(OUT_AC), 
		.OUT_DR(OUT_DR), 
		.E(E), 
		.IEN(IEN), 
		.FGI(FGI), 
		.FGO(FGO), 
		.WE(WE), 
		.Load_AR(Load_AR), 
		.Load_IR(Load_IR), 
		.Load_DR(Load_DR), 
		.Load_AC(Load_AC), 
		.Load_TR(Load_TR), 
		.Load_PC(Load_PC), 
		.Load_Out(Load_Out), 
		.EN_PC(EN_PC), 
		.EN_AR(EN_AR), 
		.EN_DR(EN_DR), 
		.EN_AC(EN_AC), 
		.Rst_FGI(Rst_FGI), 
		.Rst_FGO(Rst_FGO), 
		.Rst_IEN(Rst_IEN), 
		.Rst_AC(Rst_AC), 
		.Rst_E(Rst_E), 
		.Rst_PC(Rst_PC), 
		.Rst_AR(Rst_AR), 
		.INP_AC(INP_AC), 
		.Set_IEN(Set_IEN), 
		.FUN_ALU(FUN_ALU), 
		.Select_com(Select_com), 
		.comp_E(comp_E)
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
		rstout = 1;
		IR = 0;
		OUT_AC = 0;
		OUT_DR = 0;
		E = 0;
		IEN = 0;
		FGI = 0;
		FGO = 0;

		// Wait 100 ns for global reset to finish
		#10;
		rstout = 0;
		IR = 0;
		OUT_AC = 0;
		OUT_DR = 0;
		E = 0;
		IEN = 0;
		FGI = 0;
		FGO = 0;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here

	end
      
endmodule

