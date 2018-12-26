`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:33:03 12/22/2018 
// Design Name: 
// Module Name:    dlatch 
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
module dlatch(input d, clk,d1, output q, q_b );
	wire im1,im2,d_,buf1;
	nand #2
		(im1,d,clk),
		(im2,~d,clk),
		(q,q_b,im1,~d1),
		(buf1,q,im2);
	and #2
		(q_b, buf1,~d1);
endmodule
