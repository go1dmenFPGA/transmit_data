`timescale 1ps/1ps
module data1_tb;

    reg Adc1DCO_pi_tb = 0;
    reg Adc1DCO_ni_tb = 1;
    reg [15:0] Adc1Data_pi_tb = 16'b1110_0101_1110_0011;
    reg [15:0] Adc1Data_ni_tb = 16'b0001_1010_0001_1100;
    wire [15:0] d0_tb;
    wire [15:0] d1_tb;

    data1 uut  (.Adc1DCO_pi(Adc1DCO_pi_tb),
                .Adc1DCO_ni(Adc1DCO_ni_tb),
                .Adc1Data_pi(Adc1Data_pi_tb),
                .Adc1Data_ni(Adc1Data_ni_tb),
                .d0(d0_tb),
                .d1(d1_tb));

    always #500 Adc1DCO_pi_tb <= ~Adc1DCO_pi_tb;
    always #500 Adc1DCO_ni_tb <= ~Adc1DCO_ni_tb;

    reg [20:0] counter = 0;

    always @(posedge Adc1DCO_pi_tb)
        counter <= counter + 1;
    

    always @(posedge Adc1DCO_pi_tb or posedge Adc1DCO_ni_tb) begin
        if ((400 < counter) && (counter < 420))
            Adc1Data_pi_tb[15:0] <= {Adc1Data_pi_tb[14:0], 1'b1};
    end

    always @(posedge Adc1DCO_ni_tb or posedge Adc1DCO_pi_tb) begin
        if ((400 < counter) && (counter < 420))
            Adc1Data_ni_tb[15:0] <= {Adc1Data_ni_tb[14:0], 1'b0};
    end

endmodule

