`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:56:51 01/28/2022 
// Design Name: 
// Module Name:    Memory 
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
module Memory(
	input clk,
	input [11:0]ADR,
	input WE,
	input [15:0]WD,
	output [15:0]RD
    );
reg [15:0] RAM [0:127];
integer i;
initial
	begin	   
		 //interupt
for(i=0;i<50;i=i+1)
			RAM[i]=0;
//main		
		RAM[50]=16'h7400;
		RAM[51]=16'h2044;
		RAM[52]=16'h7080;
		RAM[53]=16'h3044;
		RAM[54]=16'h7002;
		RAM[55]=16'h4039;
		RAM[56]=16'h403d;
		RAM[57]=16'h2043;
		RAM[58]=16'h1045;
		RAM[59]=16'h3045;
		RAM[60]=16'h7400;
		RAM[61]=16'h2043;
		RAM[62]=16'h7040;
		RAM[63]=16'h3043;
		RAM[64]=16'h6046;
		RAM[65]=16'h4032;
		RAM[66]=16'h7001;
		RAM[67]=16'h0007;
		RAM[68]=16'h0017;
		RAM[69]=16'h0000;
		RAM[70]=16'hfff8;
		for(i=71;i<128;i=i+1)
			RAM[i]=0;
	end


assign RD=RAM[ADR];
always@(posedge clk)
begin
	if(WE)
		RAM[ADR]<=WD;
end  
endmodule
