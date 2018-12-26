`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:32:32 12/22/2018 
// Design Name: 
// Module Name:    dlatch_edge 
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
module dlatch_edge(input d, c,d1, output q, q_b 
    );
	 
	 wire q1,q1b;
	 dlatch
		dl1(d,~c,d1,q1,q1b),
		dl2(q1,c,d1,q,q_b);
endmodule
