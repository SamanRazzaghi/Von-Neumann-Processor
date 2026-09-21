`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:38:29 01/29/2022 
// Design Name: 
// Module Name:    ControlUnit 
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
module ControlUnit(
		input clk,
		input rstout,
		input [15:0] IR,
		input [15:0] OUT_AC,
		input [15:0] OUT_DR,
		input E,
		input IEN,
		input FI,
		input FO,
		output WE,
		output Load_AR,
		output Load_IR,
		output Load_DR,
		output Load_AC,
		output Load_TR,
		output Load_PC,
		output Load_Out,
		output EN_PC,
		output EN_AR,
		output EN_DR,
		output EN_AC,
		output Rst_FGI,
		output Rst_FGO,
		output Rst_IEN,
		output Rst_AC,
		output Rst_E,
		output Rst_PC,
		output Rst_AR,
		output INP_AC,
		output Set_IEN,
		output [2:0]FUN_ALU,
		output [2:0]Select_com,
		output comp_E,
		output Load_E
		
    );
wire I;	 
wire T0,T1,T2,T3,T4,T5,T6,T7;
wire [7:0] T;
wire k;
wire R;
wire p;
wire [7:0] EN_SCB;
wire z151,z150,zac;
wire ze,zo,zi,zdr;
wire [7:0] En_ALU;
wire rstin;
wire Rst_S;
wire S;
wire [2:0] SC_out;
wire [7:0] D;
assign I = IR[15];
assign T0 = T[0];
assign T1 = T[1];
assign T2 = T[2];
assign T3 = T[3];
assign T4 = T[4];
assign T5 = T[5];
assign T6 = T[6];
assign T7 = T[7];
assign k=D[7]&(~I)&T3;
assign p=D[7]&I&T3;
sc Sc (
    .outs(SC_out), 
    .rstin(rstin), 
    .clk(clk), 
    .rsto(rstout),
    .En(S)
    );
decoder38 IRr (
    .in(IR[14:12]), 
    .D(D)
    );
decoder38 sCs (
    .in(SC_out), 
    .D(T)
    );
encoer83 ALU(
    .A(En_ALU),  
    .out(FUN_ALU)
    );
encoer83 BUS (
    .A(EN_SCB), 
    .out(Select_com)
    );
comparator AC151 (
    .inreg(16'b0000000000000000), 
    .in(OUT_AC[15]), 
    .mod(2'b10), 
    .Z(z151)
    );
comparator AC150 (
    .inreg(16'b0000000000000000), 
    .in(OUT_AC[15]), 
    .mod(2'b11), 
    .Z(z150)
    );
comparator AC0 (
    .inreg(OUT_AC), 
    .in(1'b0), 
    .mod(2'b01), 
    .Z(zac)
    );
comparator E0 (
    .inreg(16'b0000000000000000), 
    .in(E), 
    .mod(2'b11), 
    .Z(ze)
    );
comparator F0 (
    .inreg(16'b0000000000000000), 
    .in(FO), 
    .mod(2'b10), 
    .Z(zo)
    );

comparator F1 (
    .inreg(16'b0000000000000000), 
    .in(FI), 
    .mod(2'b10), 
    .Z(zi)
    );
comparator DR0 (
    .inreg(OUT_DR), 
    .in(1'b0), 
    .mod(2'b01), 
    .Z(zdr)
    );
S ss (
    .clk(clk), 
    .Rst(Rst_S), 
    .out(S)
    );
R Rr (
    .clk(clk), 
    .Rst(Rst_R), 
    .T0(T0), 
    .T1(T1), 
    .T2(T2), 
    .IEN(IEN), 
    .FI(FI), 
    .FO(FO), 
    .grst(rstout), 
    .out(R)
    );
assign En_ALU[0] = (T5 & D[0]);
assign En_ALU[1] = (T5 & D[1]);
assign En_ALU[2] = (T5 & D[2]);
assign En_ALU[3] = (k & IR[9]);
assign En_ALU[4] = (k & IR[7]);
assign En_ALU[5] = (k & IR[6]);
assign En_ALU[6] = 0;
assign En_ALU[7] = 0;

assign EN_SCB[0] = ((~R)&T1)|((~D[7])&I&T3)|(D[0]&T4)|(D[1]&T4)|(D[2]&T4)|(D[6]&T4);
assign EN_SCB[1] = (D[4]&T4)|(D[5]&T5);
assign EN_SCB[2] = ((~R)&T0)|(D[5]&T4)|(R&T0);
assign EN_SCB[3] = (D[3]&T5)|(D[6]&T6);
assign EN_SCB[4] = D[3]&T4;
assign EN_SCB[5] =(~R)&T2 ;
assign EN_SCB[6] =R&T1 ;
assign EN_SCB[7] = 0; 

assign Load_AR =((~R)&T0)|((~R)&T2)|((~D[7])&I&T3);
assign Load_IR =((~R)&T1);
assign EN_PC = ((~R)&T1)|(k&IR[4]&z150)|(k&IR[3]&z151)|(k&IR[2]&zac)|(k&IR[1]&ze)|(p&IR[9]&zi)|(p&IR[8]&zo)|(D[6]&T6&zdr)|(R&T2);
assign Rst_S=(k&IR[0]);
assign rstin = (D[5]&T5)|(D[1]&T5)|(D[2]&T5)|(D[3]&T5)|(D[4]&T4)|(D[5]&T5)|(k&(IR[11]|IR[10]|IR[9]|IR[8]|IR[7]|IR[6]|IR[5]|IR[4]|IR[3]|IR[2]|IR[2]|IR[1]|IR[0]))|(p&(IR[11]|IR[10]|IR[9]|IR[8]|IR[7]|IR[6]))|(D[6]&T6&zdr)|(R&T2);
assign Load_AC =(D[0]&T5)|(D[1]&T5)|(D[2]&T5)|(k&IR[9])|(k&IR[7])|(k&IR[6]);
assign Load_DR =(D[1]&T4)|(D[2]&T4)|(D[3]&T4)|(D[6]&T4)|(D[0]&T4);
assign WE =(D[3]&T5)|(D[5]&T4)|(D[6]&T6)|(R&T1);
assign Load_PC =(D[4]&T4)|(D[5]&T5);
assign EN_AR =(D[5]&T4); 
assign EN_DR =(D[6]&T5);
assign Rst_AC =(k&IR[11]);
assign Rst_E = (k&IR[10]);
assign Rst_AR = (R&T0);
assign Load_TR = (R&T0);
assign Rst_PC=(R&T1);
assign Rst_R=(R&T2);
assign EN_AC=(k&IR[5]);
assign INP_AC=(p&IR[11]);
assign Load_Out=(p&IR[10]);
assign Rst_FGI=(p&IR[11]);
assign Rst_FGO=(p&IR[10]);
assign Rst_IEN=(p&IR[6])|(R&T2);
assign Set_IEN=(p&IR[7]);
assign comp_E=(k&IR[8]);
assign Load_E=(D[1]&T5)|(k&IR[6])|(k&IR[7]);
 

endmodule
