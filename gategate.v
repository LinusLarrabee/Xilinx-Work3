`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:53:08 12/26/2018
// Design Name:   gate
// Module Name:   Y:/Desktop/ColorLight0_1/gategate.v
// Project Name:  ColorLight0_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gategate;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [5:0] light;

	// Instantiate the Unit Under Test (UUT)
	gate uut (
		.clk(clk), 
		.rst(rst), 
		.light(light)
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
   always #100 clk =~clk;
endmodule

