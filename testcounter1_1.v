`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:12:13 12/26/2018
// Design Name:   count7
// Module Name:   Y:/Desktop/ColorLight0_1/testcounter1_1.v
// Project Name:  ColorLight0_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: count7
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testcounter1_1;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire gene;
	wire a0;
	wire a1;
	wire a2;

	// Instantiate the Unit Under Test (UUT)
	count7 uut (
		.clk(clk), 
		.rst(rst), 
		.gene(gene), 
		.a0(a0), 
		.a1(a1), 
		.a2(a2)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#1000;
      rst = 0;
		// Add stimulus here

	end
	always #100 clk = ~clk;
      
endmodule

