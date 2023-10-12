`timescale 1ps/1ps
module data_adc_pll (input clk, 
			   output wire mosi, 
               output wire sck,
               output wire SpiAdc1CSB_po,
               output wire SpiPllCSB_po);

    //регистры для adc
    reg [23:0] q;
    reg send_adc;
    reg [10:0] bits = 24;
    reg [3:0] package = 0;
    reg [19:0] waiting = 0;

    //регистры для pll
    reg [23:0] q0;
    reg send_pll;
    reg [10:0] bits0 = 24;
    reg [4:0] package0 = 0;
    reg [19:0] waiting0 = 0;

    spi_pll_adc1 uut1(.clk(clk), 
                      .mosi(mosi), 
                      .SpiAdc1CSB_po(SpiAdc1CSB_po), 
                      .SpiPllCSB_po(SpiPllCSB_po),
                      .sck(sck), 
                      .send_adc(send_adc), 
                      .send_pll(send_pll),
                      .data_adc(q[23:0]),
                      .data_pll(q0[23:0]));

    //данные ацп
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
            send_adc <= 1;
            package <= package + 1;
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
            send_adc <= 0;
    end

    //данные pll
    reg [10:0] count = 0;

    always @(posedge clk) 
        count <= count + 1;

    always @(posedge clk) begin
        if (count > 500) begin
            if ((bits0 == 24) || (package0 == 5'd26))
                bits0 <= 0;
            else if (q0[23:0] == 24'h3CA000) begin
                bits0 <= 0;
                waiting0 <= waiting0 + 1;
                    if (waiting0 == 200) begin
                        bits0 <= 24;
                        waiting0 <= 0;
                    end
            end
            else 
                bits0 <= bits0 + 1;
        end
    end

    reg [20:0] counter = 0;
    
    always @(posedge clk) begin
        if (count > 500) begin
            if (bits0 == 24) begin
                send_pll <= 1;
                package0 <= package0 + 1;
                case (package0)
                        5'd0: q0[23:0] <= 24'h3CA000;
                        5'd1: q0[23:0] <= 24'h3A8C00;
                        5'd2: q0[23:0] <= 24'h357806;
                        5'd3: q0[23:0] <= 24'h2F0000;
                        5'd4: q0[23:0] <= 24'h290819;
                        5'd5: q0[23:0] <= 24'h2819DC;
                        5'd6: q0[23:0] <= 24'h2711FB;
                        5'd7: q0[23:0] <= 24'h230643;
                        5'd8: q0[23:0] <= 24'h225000;
                        5'd9: q0[23:0] <= 24'h180005;
                        5'd10: q0[23:0] <= 24'h170082;
                        5'd11: q0[23:0] <= 24'h166E8A;
                        5'd12: q0[23:0] <= 24'h150101;
                        5'd13: q0[23:0] <= 24'h140018;
                        5'd14: q0[23:0] <= 24'h130000;
                        5'd15: q0[23:0] <= 24'h120000;
                        5'd16: q0[23:0] <= 24'h110000;
                        5'd17: q0[23:0] <= 24'h080004;
                        5'd18: q0[23:0] <= 24'h0705C3;
                        5'd19: q0[23:0] <= 24'h06AE8A;
                        5'd20: q0[23:0] <= 24'h050101;
                        5'd21: q0[23:0] <= 24'h040018;
                        5'd22: q0[23:0] <= 24'h030000;
                        5'd23: q0[23:0] <= 24'h020000;
                        5'd24: q0[23:0] <= 24'h010000;
                        5'd25: q0[23:0] <= 24'h000283;                
                        default: q0[23:0] <= 24'h3CA000;
                endcase
            end
            else 
                send_pll <= 0;
        end
    end

endmodule

    
                    // 4'd0: pattern_pll[23:0] <= 24'h3CA000;
                    // 4'd1: pattern_pll[23:0] <= 24'h3A8C00;
                    // 4'd2: pattern_pll[23:0] <= 24'h357806;
                    // 4'd3: pattern_pll[23:0] <= 24'h2F0000;
                    // 4'd4: pattern_pll[23:0] <= 24'h290819;
                    // 4'd5: pattern_pll[23:0] <= 24'h2819DC;
                    // 4'd6: pattern_pll[23:0] <= 24'h2711FB;
                    // 4'd7: pattern_pll[23:0] <= 24'h230643;
                    // 4'd8: pattern_pll[23:0] <= 24'h225000;
                    // 4'd9: pattern_pll[23:0] <= 24'h180005;
                    // 4'd10: pattern_pll[23:0] <= 24'h170082;
                    // 4'd11: pattern_pll[23:0] <= 24'h166E8A;
                    // 4'd12: pattern_pll[23:0] <= 24'h150101;
                    // 4'd13: pattern_pll[23:0] <= 24'h140018;
                    // 4'd14: pattern_pll[23:0] <= 24'h130000;
                    // 4'd15: pattern_pll[23:0] <= 24'h120000;
                    // 4'd16: pattern_pll[23:0] <= 24'h110000;
                    // 4'd17: pattern_pll[23:0] <= 24'h080004;
                    // 4'd18: pattern_pll[23:0] <= 24'h0705C3;
                    // 4'd19: pattern_pll[23:0] <= 24'h06AE8A;
                    // 4'd20: pattern_pll[23:0] <= 24'h050101;
                    // 4'd21: pattern_pll[23:0] <= 24'h040018;
                    // 4'd22: pattern_pll[23:0] <= 24'h030000;
                    // 4'd23: pattern_pll[23:0] <= 24'h020000;
                    // 4'd24: pattern_pll[23:0] <= 24'h010000;
                    // 4'd25: pattern_pll[23:0] <= 24'h000283;
                    // default: pattern_pll[23:0] <= 24'h3CA000;