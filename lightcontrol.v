`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:42:09 12/24/2018 
// Design Name: 
// Module Name:    lightcontrol 
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
module lightcontrol(input [2:0] a,output [5:0] l
    );
	 wire im1,im2,im3,im4,im5,im6,im7;
	 or
		(l[0],a[0],a[1],a[2]),
		(l[2],im1,im2),
		(l[3],a[2],im3),
		(l[4],im4,im5,im6),
		(l[5],im7,a[0]);
		
	and
		(l[1],a[0],~a[1],~a[2]),
		(im1,~a[2],~a[1],a[0]),
		(im2,~a[2],a[1],~a[0]),
		(im3,~a[1],a[0]),
		(im4,~a[2],a[0]),
		(im5,~a[2],a[1]),
		(im6,a[2],~a[1],~a[0]),
		(im7,a[2],~a[1]);


endmodule
