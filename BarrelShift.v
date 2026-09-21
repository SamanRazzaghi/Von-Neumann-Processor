`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:25 01/29/2022 
// Design Name: 
// Module Name:    BarrelShiftLeft 
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
module BarrelShiftLeft(
    input [15:0] IN,
    output E,
    output [15:0] OUT
    );

assign OUT[15]=IN[14];
assign OUT[14]=IN[13];
assign OUT[13]=IN[12];
assign OUT[12]=IN[11];
assign OUT[11]=IN[10];
assign OUT[10]=IN[9];
assign OUT[9]=IN[8];
assign OUT[8]=IN[7];
assign OUT[7]=IN[6];
assign OUT[6]=IN[5];
assign OUT[5]=IN[4];
assign OUT[4]=IN[3];
assign OUT[3]=IN[2];
assign OUT[2]=IN[1];
assign OUT[1]=IN[0];
assign OUT[0]=IN[15];
assign E=IN[15];

endmodule
