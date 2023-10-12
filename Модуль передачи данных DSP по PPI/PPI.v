`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 11:55:40 PM
// Design Name: 
// Module Name: PPI
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


module PPI(input clk, send,
           input [15:0] send_data,
           output wire ppi_clk, 
           output reg ppi_FS = 0,
           output reg [15:0] ppi_data = 0);

    assign ppi_clk = ~clk;
    reg [3:0] counter = 0;

    always @(posedge clk) begin
        if (send == 1) begin
            ppi_data[15:0] <= send_data[15:0];
                if (counter == 1)
                    ppi_FS <= 1;
                else if (counter != 1)
                    ppi_FS <= 0;
        end
    end

    always @(posedge clk)
        counter <= counter + 1;
  
endmodule