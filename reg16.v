`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:13:10 01/28/2022 
// Design Name: 
// Module Name:    reg16 
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
module reg16(
	 input clk,
    input Load,
    input Rst,
	 input FI,
	 input grst,
	 input FO,
	 input [7:0] In,
	 output [7:0] outreg,
	 input En,
	 input [15:0] Data,
    output [15:0] out
    );
reg [15:0] R;
reg [7:0] K;
always@ (posedge clk)
	begin 
		if(Rst||grst)
			R <=0;
		else if(Load)
			R <= Data;
		else if (En)
			R <= R+1;
		else if(FI)
			R <={8'h00,In};
		else if(FO)
			K <= R[7:0];
		else
			R<=R;
	end
assign out=R;
assign outreg=K;

endmodule
