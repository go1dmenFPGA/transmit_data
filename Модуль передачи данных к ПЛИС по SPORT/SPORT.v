`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Planar
// Engineer: Igor Pavlov
// 
// Create Date: 09/10/2023 02:08:44 PM
// Design Name: DATA
// Module Name: SPORT
// Project Name: Check_ADC
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

module SPORT (input [3:0] data,
              input FS,
              input sport_clk,
              output [7:0] data_out0,
              output [7:0] data_out1,
              output [7:0] data_out2,
              output [7:0] data_out3,
              output reg take_this = 0);

    reg [7:0] q0 = 8'd0;
    reg [7:0] q1 = 8'd0;
    reg [7:0] q2 = 8'd0;
    reg [7:0] q3 = 8'd0;
    reg [2:0] delay = 0;

    assign data_out0 = q0;
    assign data_out1 = q1;
    assign data_out2 = q2;
    assign data_out3 = q3;

    always @(posedge sport_clk) begin
       if(FS == 0) begin
            if (delay == 7) begin
                take_this <= 1;
                delay <= 0;
            end 
            else 
                delay <= delay + 1;
       end
       else 
           take_this <= 0;
    end

    always @(posedge sport_clk) begin
        if(FS == 0) begin
            q0 = {q0[6:0], data[0]};
            q1 = {q1[6:0], data[1]};
            q2 = {q2[6:0], data[2]};
            q3 = {q3[6:0], data[3]};
        end
    end

endmodule
