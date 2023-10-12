`timescale 1ps / 1ps

module spi_pll_adc1 (input clk, send_adc, send_pll,
                     input [23:0] data_adc,
                     input [23:0] data_pll,
                     output reg SpiAdc1CSB_po = 1,
                     output reg SpiPllCSB_po = 1,
                     output sck,
                     output mosi);
					 		
    assign sck = clk & (~SpiAdc1CSB_po | ~SpiPllCSB_po);
    assign mosi = data[23];

	reg [23:0] data = 0;
	reg [4:0] dataCnt = 24;	
    reg [10:0] count = 0;	

	//spi adc

	always @(posedge clk) begin
		if (send_adc == 1) begin
            data[23:0] <= data_adc[23:0];
            SpiAdc1CSB_po <= 0;
            dataCnt <= 0;
        end
        else if (send_pll == 1) begin
            data[23:0] <= data_pll[23:0];
            SpiPllCSB_po <= 0;
            dataCnt <= 0;
        end
		else if (dataCnt != 24) begin
			dataCnt <= dataCnt + 1;
            data <= {data[22:0],  1'b0};
                if (dataCnt == 23) begin
                    SpiAdc1CSB_po <= 1;
                    SpiPllCSB_po <= 1;
                end
        end
	end	

    // 	always @(posedge clk) begin
	// 	if (send_adc == 1) begin
	// 		dataCnt_adc <= 0;
    //         data[23:0] <= data_adc[23:0];
    //         SpiAdc1CSB_po <= 0;
    //     end
    //     else if (send_pll == 1) begin
	// 		dataCnt_pll <= 0;
    //         data[23:0] <= data_pll[23:0];
    //         SpiPllCSB_po <= 0;
    //     end
	// 	if (dataCnt_adc != 24) begin
	// 		dataCnt_adc <= dataCnt_adc + 1;
    //             if (dataCnt_adc == 23)
    //                 SpiAdc1CSB_po <= 1;
    //     end
    //     else if (dataCnt_pll != 24) begin
    //         dataCnt_pll <= dataCnt_pll + 1;
    //             if (dataCnt_pll == 23)
    //                 SpiPllCSB_po <= 1;
    //     end
    //     if ((dataCnt_adc != 24) || (dataCnt_pll != 24))
    //         data <= {data[22:0],  1'b0};
	// end	
				
endmodule 