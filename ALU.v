`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:29:49 01/29/2022 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [15:0] A,
    input [15:0] B,
	 input C,
    output reg [15:0] OUT,
    input [2:0] FUN,
    output reg E
    );
 wire ER;
 wire EL;
 wire [15:0] OUTR;
 wire [15:0] OUTL;
 
assign OUTR[14]=A[15];
assign OUTR[13]=A[14];
assign OUTR[12]=A[13];
assign OUTR[11]=A[12];
assign OUTR[10]=A[11];
assign OUTR[9]=A[10];
assign OUTR[8]=A[9];
assign OUTR[7]=A[8];
assign OUTR[6]=A[7];
assign OUTR[5]=A[6];
assign OUTR[4]=A[5];
assign OUTR[3]=A[4];
assign OUTR[2]=A[3];
assign OUTR[1]=A[2];
assign OUTR[0]=A[1];
assign ER=A[0];
assign OUTR[15]=C;

assign OUTL[15]=A[14];
assign OUTL[14]=A[13];
assign OUTL[13]=A[12];
assign OUTL[12]=A[11];
assign OUTL[11]=A[10];
assign OUTL[10]=A[9];
assign OUTL[9]=A[8];
assign OUTL[8]=A[7];
assign OUTL[7]=A[6];
assign OUTL[6]=A[5];
assign OUTL[5]=A[4];
assign OUTL[4]=A[3];
assign OUTL[3]=A[2];
assign OUTL[2]=A[1];
assign OUTL[1]=A[0];
assign OUTL[0]=C;
assign EL=A[15];


 always@(A,B,C,FUN,ER,EL,OUTR,OUTL)
	 begin
			case(FUN)
				3'b000:		{E,OUT}=A&B;
				3'b001:		{E,OUT}=A+B;
				3'b010:		{E,OUT}={C,B};
				3'b011:		{E,OUT}={C,~A};
				3'b100:  	{E,OUT}={ER,OUTR};
				3'b101:     {E,OUT}={EL,OUTL};
				3'B110:		{E,OUT}=17'h00000;
				3'b111:		{E,OUT}=17'h00000;
						 

			endcase
	 
	 
	 end
	 
endmodule
