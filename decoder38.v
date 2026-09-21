`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:27:40 01/28/2022 
// Design Name: 
// Module Name:    decoder38 
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
module decoder38(
    input [2:0] in,
    output [7:0] D
    );
assign D = (in==0)?8'b00000001:(in==1)?8'b00000010:(in==2)?8'b00000100
:(in==3)?8'b00001000:(in==4)?8'b00010000:(in==5)?8'b00100000:(in==6)?8'b01000000:8'b10000000;

endmodule
