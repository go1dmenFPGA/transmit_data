`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2023 01:33:49 PM
// Design Name: 
// Module Name: pattern
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


module pattern(input clk, 
			   output wire mosi, cs, sck);

    reg [23:0] q;
    reg send;
    reg [10:0] bits = 24;
    reg [3:0] package = 0;
    reg [19:0] waiting = 0;

    spi_adc2 uut1(.clk(clk), .mosi(mosi), .cs(cs), .sck(sck), .send(send), .pattern(q[23:0]));

    always @(posedge clk) begin
        if ((bits == 24) || (package == 4'd11))
            bits <= 0;
        else if (q[23:0] == 24'h00003c) begin
            bits <= 0;
            waiting <= waiting + 1;
                if (waiting == 100) begin
                    bits <= 24;
                    waiting <= 0;
                end
        end
        else 
            bits <= bits + 1;
    end
    
    always @(posedge clk) begin
        if (bits == 24) begin
            package <= package + 1;
            send <= 1;
            case (package)
                4'd0: q[23:0] <= 24'h00003c;
                4'd1: q[23:0] <= 24'h000503;
                4'd2: q[23:0] <= 24'h000b00;
                4'd3: q[23:0] <= 24'h000f01;
                4'd4: q[23:0] <= 24'h001440;
                4'd5: q[23:0] <= 24'h001719;
                4'd6: q[23:0] <= 24'h0018c0;
                4'd7: q[23:0] <= 24'h000d00;
                4'd8: q[23:0] <= 24'h001000;
                4'd9: q[23:0] <= 24'h003000;
                4'd10: q[23:0] <= 24'h00ff01;
                default: q[23:0] <= 24'h00003c;
            endcase
        end
        else 
            send <= 0;        
    end

endmodule
