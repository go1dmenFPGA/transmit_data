`timescale 1ps/1ps
module spi_adc2_tb;

	reg clk_tb = 0;
	wire sck_tb;
	wire mosi_tb;
	wire SpiAdc1CSB_po_tb;	
    wire SpiPllCSB_po_tb;

	data_adc_pll uut(.clk(clk_tb), 
			    .sck(sck_tb),
			    .SpiAdc1CSB_po(SpiAdc1CSB_po_tb),
                .SpiPllCSB_po(SpiPllCSB_po_tb),
			    .mosi(mosi_tb));
				  
	always #500 clk_tb <= ~clk_tb;
			
endmodule