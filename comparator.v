`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:58:08 01/28/2022 
// Design Name: 
// Module Name:    comparator 
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
module comparator(
    input [15:0] inreg,
	 input in,
	 input [1:0] mod,
    output Z
    );
	 //0:inreg=1/1:inreg=0/2:in=1/3:in=0
	 reg R;
	      always@(inreg,in,mod)
	      begin
			case(mod)
				2'b00:		R =(inreg==16'h0001)?1:0;
				2'b01:		R =(inreg==16'h0000)?1:0;
				2'b10:		R =(in==1'b1)?1:0;
				2'b11:		R =(in==1'b0)?1:0;
			endcase
	      end
    assign Z = R;
endmodule
