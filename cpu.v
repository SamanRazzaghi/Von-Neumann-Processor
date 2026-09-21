`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:38:42 01/29/2022 
// Design Name: 
// Module Name:    cpu 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module cpu(
	input rst,
	input clk,
	input FGI_IN,
	input FGO_IN,
	input [7:0] INPR,
	output [7:0] OPR
    );
wire [15:0] Data;
wire WE,Load_AR,Load_IR,Load_DR,Load_AC,EN_PC,Load_TR,Load_PC;
wire [2:0] FUN_ALU;
wire [2:0] Select_com;
wire [11:0] out_AR;
wire [15:0] out_mem;
wire [15:0] out_IR;
wire [15:0] out_DR;
wire [15:0] out_AC;
wire [11:0] out_PC;
wire [15:0] out_TR;
wire [15:0] out_ALU;
wire [7:0] outreg;
wire [7:0] In;
wire En_AR,En_DR,En_AC,Rst_AC,Rst_AR,Rst_PC,Rst_E,Rst_FGO,Rst_FGI,Rst_IEN,CARRY,EE,Load_OUT,Set_IEN,comp_E,Load_E,FI,FO;
ControlUnit CU (
    .clk(clk), 
    .rstout(rst), 
    .IR(out_IR), 
    .OUT_AC(out_AC), 
	 .OUT_DR(out_DR),
    .E(EE), 
    .IEN(IEN), 
    .FI(FI), 
    .FO(FO), 
    .WE(WE),
	 .comp_E(comp_E),
	 .Load_E(Load_E),
    .Load_AR(Load_AR), 
    .Load_IR(Load_IR), 
    .Load_DR(Load_DR), 
    .Load_AC(Load_AC), 
    .Load_TR(Load_TR), 
    .Load_PC(Load_PC), 
    .Load_Out(Load_OUT), 
    .EN_PC(EN_PC), 
    .EN_AR(En_AR), 
    .EN_DR(En_DR), 
    .EN_AC(En_AC), 
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
    .Select_com(Select_com)
    );
Memory mem (
    .clk(clk), 
    .ADR(out_AR), 
    .WE(WE), 
    .WD(Data), 
    .RD(out_mem)
    );
reg12 AR (
    .clk(clk), 
    .Load(Load_AR), 
    .Rst(Rst_AR),
	 .grst(rst),
    .En(En_AR), 
    .Data(Data[11:0]), 
    .out(out_AR)
    );
regpc PC (
    .clk(clk), 
    .Load(Load_PC), 
    .Rst(Rst_PC),
	 .grst(rst),
    .En(EN_PC), 
    .Data(Data[11:0]), 
    .out(out_PC)
    );
reg16 AC (
    .clk(clk), 
    .Load(Load_AC), 
    .Rst(Rst_AC),
	 .FI(INP_AC),
	 .grst(rst),
    .FO(FO), 
    .In(In), 
    .outreg(outreg), 
    .En(En_AC), 
    .Data(out_ALU), 
    .out(out_AC)
    );
reg16 DR (
    .clk(clk), 
    .Load(Load_DR), 
    .Rst(1'b0),
    .FI(1'b0), 
	 .grst(rst),
    .FO(1'b0), 
    .In(8'b00000000), 
    .outreg(), 
    .En(En_DR), 
    .Data(Data), 
    .out(out_DR)
    );
reg16 TR (
    .clk(clk), 
    .Load(Load_TR), 
    .FI(1'b0),
	 .grst(rst),
    .Rst(1'b0), 	 
    .FO(1'b0), 
    .In(8'b0000000), 
    .outreg(), 
    .En(1'b0), 
    .Data(Data), 
    .out(out_TR)
    );
reg16 IR (
    .clk(clk), 
    .Load(Load_IR), 
    .Rst(1'b0),
    .FI(1'b0), 
	 .grst(rst),
    .FO(1'b0), 
    .In(8'b0000000), 
    .outreg(), 
    .En(1'b0), 
    .Data(Data), 
    .out(out_IR)
    );
reg7 INPI (
    .clk(clk), 
    .Load(1'b1),
    .Data(INPR), 
    .out7(In)
    );
reg7 OUTR (
    .clk(clk), 
    .Load(Load_OUT),
    .Data(outreg), 
    .out7(OPR)
    );
BUS mux (
    .addr(Select_com), 
    .A(out_mem),//0 
    .B({4'b0000,out_AR}), //1
    .C({4'b0000,out_PC}), //2
    .D(out_DR), //3
    .E(out_AC), //4
    .F(out_IR), //5
    .G(out_TR), //6
    .H(16'h0000), //7
    .Z(Data)
    );
ALU ALU (
    .A(out_AC), 
    .B(out_DR),
	 .C(EE),
    .OUT(out_ALU), 
    .FUN(FUN_ALU), 
    .E(CARRY)
    );
flipflop E (
    .clk(clk), 
    .Set(1'b0), 
    .Rst(Rst_E),
	 .comp(comp_E),
	 .load(Load_E),	 
    .grst(rst), 
    .in(CARRY), 
    .out(EE)
    );
flipflop Ien (
    .clk(clk), 
    .Set(Set_IEN), 
    .Rst(Rst_IEN),
	 .comp(1'b0),
	 .load(1'b0),
    .grst(rst), 
    .in(1'b0), 
    .out(IEN)
    );
flipflop Fg1 (
    .clk(clk), 
    .Set(FGI_IN), 
    .Rst(Rst_FGI),
	 .comp(1'b0),
	 .load(1'b0),	 
    .grst(rst), 
    .in(1'b0), 
    .out(FI)
    );
flipflop Fg0 (
    .clk(clk), 
    .Set(FGO_IN), 
    .Rst(Rst_FGO),
	 .comp(1'b0),
	 .load(1'b0),
    .grst(rst), 
    .in(1'b0), 
    .out(FO)
    );
endmodule
