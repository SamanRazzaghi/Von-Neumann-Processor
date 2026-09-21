`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:55:47 01/28/2022 
// Design Name: 
// Module Name:    BUS 
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
module BUS(
    input [15:0] A,
    input [15:0] B,
    input [15:0] C,
    input [15:0] D,
    input [15:0] E,
    input [15:0] F,
    input [15:0] G,
    input [15:0] H,
    output [15:0] Z,
    input [2:0] addr
    );
assign Z =(addr==0)?A:(addr==1)?B:(addr==2)?C:(addr==3)?D:(addr==4)?E:(addr==5)?F:(addr==6)?G:H;

endmodule