`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:35:18 01/29/2022 
// Design Name: 
// Module Name:    inout 
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
    output [7:0] out
    );
reg [11:0] R;
always@ (posedge clk)
	begin 
			R <=Data;
	end
assign out=R;

endmodule
