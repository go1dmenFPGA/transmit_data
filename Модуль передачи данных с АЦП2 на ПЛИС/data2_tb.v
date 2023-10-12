`timescale 1ps/1ps
module data2_tb;

    reg Adc2DCO_pi_tb = 0;
    reg Adc2DCO_ni_tb = 1;
    reg [15:0] Adc2Data_pi_tb = 16'b1110_0101_1110_0011;
    reg [15:0] Adc2Data_ni_tb = 16'b0001_1010_0001_1100;
    wire [15:0] q1_tb;
    wire [15:0] q2_tb;

    data2 uut  (.Adc2DCO_pi(Adc2DCO_pi_tb),
                        .Adc2DCO_ni(Adc2DCO_ni_tb),
                        .Adc2Data_pi(Adc2Data_pi_tb),
                        .Adc2Data_ni(Adc2Data_ni_tb),
                        .q1(q1_tb),
                        .q2(q2_tb));

    always #500 Adc2DCO_pi_tb <= ~Adc2DCO_pi_tb;
    always #500 Adc2DCO_ni_tb <= ~Adc2DCO_ni_tb;

    reg [20:0] counter = 0;

    always @(posedge Adc2DCO_pi_tb)
        counter <= counter + 1;
    

    always @(posedge Adc2DCO_pi_tb or posedge Adc2DCO_ni_tb) begin
        if ((400 < counter) && (counter < 420))
            Adc2Data_pi_tb[15:0] <= {Adc2Data_pi_tb[14:0], 1'b1};
    end

    always @(posedge Adc2DCO_ni_tb or posedge Adc2DCO_pi_tb) begin
        if ((400 < counter) && (counter < 420))
            Adc2Data_ni_tb[15:0] <= {Adc2Data_ni_tb[14:0], 1'b0};
    end

endmodule
