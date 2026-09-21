`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:24:41 01/29/2022 
// Design Name: 
// Module Name:    S 
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
module S(
	  clk,
     Rst,
     out
    );
	 	 input clk;
       input Rst;
       output reg out=1'b1;
always@ (posedge clk)
	begin 
		if(Rst)
			out <=0;
		else
			out <=out;
	end


endmodule
