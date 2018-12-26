`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:52:44 12/25/2018 
// Design Name: 
// Module Name:    statecontrol 
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
module statecontrol(input clk ,rst,pause output [5:0] light
    );
	 state
		state1(clk,rst,light);
	always @(pause)
		if (pause ==1)

endmodule
