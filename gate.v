`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:05:16 12/25/2018 
// Design Name: 
// Module Name:    gate 
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
module gate(input clk,rst, output [5:0] light
    );
	 wire gene;
	 wire [2:0] a;
	 count7
		counter(clk,rst,gene,a[0],a[1],a[2]);
	lightcontrol
		licrl(a,light);
endmodule
