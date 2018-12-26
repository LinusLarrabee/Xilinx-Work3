`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:31:56 12/22/2018 
// Design Name: 
// Module Name:    count7 
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
 module count7(input clk,rst, output gene,a0,a1,a2
    );
	 
	 wire im1,im2,im3,im4,im5,im6,im7,as0,as1,as2;
	 wire ab0,ab1,ab2;
	 
	 dlatch_edge
		d0 (as0,clk,rst,a0,ab0),
		d1 (as1,clk,rst,a1,ab1),
		d2 (as2,clk,rst,a2,ab2);
	
	
	and 
		(im1,a2,ab1),
		(im2,a1,a0,ab2),
		(im3,ab1,a0),
		(im4,ab2,a1,ab0),
		(im5,ab1,ab0),
		(im6,ab2,ab0),
		(gene,a2,a1);
		
	or
		(as2,im1,im2),
		(as1,im3,im4),
		(as0,im5,im6);
		
endmodule

