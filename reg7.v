`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:37:44 01/29/2022 
// Design Name: 
// Module Name:    reg7 
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
module reg7(
	 input clk,
    input Load,
	 input [7:0] Data,
    output [7:0] out7
    );
	 
reg [7:0] R=8'b00000000;
always@ (posedge clk)
	begin 
			if(Load)
			R <=Data;
			else
			R<= R;
	end
assign out7=R;

endmodule
