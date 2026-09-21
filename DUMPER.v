`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:54:05 01/29/2022 
// Design Name: 
// Module Name:    DUMPER 
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
module DUMPER(
    input [7:0] DUMPTR,
    input [7:0] DUMPIR,
    input [7:0] DUMPDR,
	 output [9:0] DUMP
    );

assign DUMP=DUMPTR+DUMPIR+DUMPDR;
endmodule
