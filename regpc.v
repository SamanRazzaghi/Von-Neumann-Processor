`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:28:55 01/30/2022 
// Design Name: 
// Module Name:    regpc 
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
module regpc(
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
		if(Rst)
			R <=0;
		else if(grst)
			R <= 16'h0032;
		else if(Load)
			R <= Data;
		else if (En)
			R <= R+1;
	end
assign out=R;

endmodule
