`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:29:52 01/29/2022 
// Design Name: 
// Module Name:    flipflop 
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
module flipflop(
	 input clk,
    input Set,
    input Rst,
	 input comp,
	 input load,
	 input grst,
	 input in,
    output out
    );
reg R;
always@ (posedge clk)
	begin 
		if(Rst||grst)
			R <=0;
		else if(Set)
			R <= 1;
		else if(comp)
			R <= ~R;
		else if(load) 
			R <= in;
		else
			R <= R;
	end
assign out=R;

endmodule
