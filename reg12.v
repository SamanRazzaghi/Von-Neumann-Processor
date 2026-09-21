`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:48:37 01/30/2022 
// Design Name: 
// Module Name:    reg12 
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
module reg12(
	 input clk,
    input Load,
    input Rst,
	 input grst,
	 input En,
	 input [11:0] Data,
    output [11:0] out
    );
reg [11:0] R;
always@ (posedge clk)
	begin 
		if(Rst||grst)
			R <=0;
		else if(Load)
			R <= Data;
		else if (En)
			R <= R+1;
	end
assign out=R;

endmodule

