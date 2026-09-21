`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:23:23 01/28/2022 
// Design Name: 
// Module Name:    sc 
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
module sc(
    output [2:0] outs,
    input rstin,
    input clk,
    input rsto,
	 input En
    );
reg [2:0] R;
always @ (posedge clk)
	begin 
		if(rstin || rsto)
			R <= 3'b000;
		else if(En)
			R <=R+1;
		else
			R<=R;
	end
assign outs = R;
endmodule
