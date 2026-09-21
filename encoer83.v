`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:54:22 01/28/2022 
// Design Name: 
// Module Name:    encoer83 
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
module encoer83(
    input [7:0] A,
    output [2:0] out
    );
assign out =(A==8'b00000001)?0:(A==8'b00000010)?1:(A==8'b00000100)?2:(A==8'b00001000)?3:(A==8'b00010000)?4:
(A==8'b00100000)?5:(A==8'b01000000)?6:7;

endmodule
