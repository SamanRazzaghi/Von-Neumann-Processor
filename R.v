`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:53:55 01/29/2022 
// Design Name: 
// Module Name:    R 
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
module R(
	 input clk,
    input Rst,
	 input T0,
	 input T1,
	 input T2,
	 input IEN,
	 input FI,
	 input FO,
	 input grst,
    output out
    );
reg R;
wire L;
assign L=(~T0)&(~T1)&(~T2)&(IEN)&(FI|FO);
always@ (posedge clk)
	begin 
		if(Rst||grst)
			R <=0;
		else if(L)
			R <=1'b1;
		else
			R<=R;
	end
assign out=R;

endmodule
