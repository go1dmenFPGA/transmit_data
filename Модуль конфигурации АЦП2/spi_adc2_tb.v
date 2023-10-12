`timescale 1ps/1ps
module spi_adc2_tb;

	reg clk_tb = 0;
	wire sck_tb;
	wire mosi_tb;
	wire cs_tb;	

	pattern uut(.clk(clk_tb), 
			    .sck(sck_tb),
			    .cs(cs_tb),
			    .mosi(mosi_tb));
				  
	always #500 clk_tb <= ~clk_tb;
			
endmodule