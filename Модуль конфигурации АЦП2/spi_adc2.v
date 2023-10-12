`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2023 02:02:53 PM
// Design Name: 
// Module Name: spi_adc2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


//spi

module spi_adc2 (input clk, send,
				 input [23:0] pattern,
				 output reg cs = 1,
				 output wire sck,
			     output mosi);
					 		
    assign sck = clk & ~cs;

	reg [23:0] data = 0;
	reg [4:0] dataCnt = 24;	
		
	assign mosi = data[23];
	
	always @(posedge clk) begin
		if (send == 1) begin
			dataCnt <= 0;
			data[23:0] <= pattern[23:0];
            cs <= 0;
		end
		else if (dataCnt != 24) begin
			dataCnt <= dataCnt + 1;
			data <= {data[22:0],  1'b0};
				if (dataCnt == 23)
            		cs <= 1;
        end
	end
				
endmodule 
