`timescale 1ps / 1ps

module data2           (input Adc2DCO_pi,
                        input Adc2DCO_ni,
                        input[15:0] Adc2Data_pi,
                        input[15:0] Adc2Data_ni,
                        input Adc2OR_pi, //сигнал перегрузки АЦП
                        input Adc2OR_ni, //сигнал перегрузки АЦП
                        output [15:0] q1,
                        output [15:0] q2);

    wire CLOCK_out;
    wire [15:0]DATA_IN;
    wire clock_data2;


//буферы для тактовой частоты

   IBUFDS #(
      .DIFF_TERM("FALSE"),       // Differential Termination
      .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE" 
      .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
   ) IBUFDS_inst0 (
      .O(CLOCK_out),  // Buffer output
      .I(Adc2DCO_pi),  // Diff_p buffer input (connect directly to top-level port)
      .IB(Adc2DCO_ni) // Diff_n buffer input (connect directly to top-level port)
   );

   BUFIO BUFIO_inst (
      .O(clock_data2), // 1-bit output: Clock output (connect to I/O clock loads).
      .I(CLOCK_out)  // 1-bit input: Clock input (connect to an IBUF or BUFMR).
   );

//буферы для входных данных
    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst1 (
     .O(DATA_IN[0]),  // Buffer output
     .I(Adc2Data_pi[0]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc2Data_ni[0]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst2 (
     .O(DATA_IN[1]),  // Buffer output
     .I(Adc2Data_pi[1]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc2Data_ni[1]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst3 (
     .O(DATA_IN[2]),  // Buffer output
     .I(Adc2Data_pi[2]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc2Data_ni[2]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst4 (
     .O(DATA_IN[3]),  // Buffer output
     .I(Adc2Data_pi[3]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc2Data_ni[3]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst5 (
     .O(DATA_IN[4]),  // Buffer output
     .I(Adc2Data_pi[4]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc2Data_ni[4]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst6 (
     .O(DATA_IN[5]),  // Buffer output
     .I(Adc2Data_pi[5]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc2Data_ni[5]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst7 (
     .O(DATA_IN[6]),  // Buffer output
     .I(Adc2Data_pi[6]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc2Data_ni[6]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst8 (
     .O(DATA_IN[7]),  // Buffer output
     .I(Adc2Data_pi[7]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc2Data_ni[7]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst9 (
     .O(DATA_IN[8]),  // Buffer output
     .I(Adc2Data_pi[8]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc2Data_ni[8]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst10 (
     .O(DATA_IN[9]),  // Buffer output
     .I(Adc2Data_pi[9]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc2Data_ni[9]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst11 (
     .O(DATA_IN[10]),  // Buffer output
     .I(Adc2Data_pi[10]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc2Data_ni[10]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst12 (
     .O(DATA_IN[11]),  // Buffer output
     .I(Adc2Data_pi[11]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc2Data_ni[11]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst13 (
     .O(DATA_IN[12]),  // Buffer output
     .I(Adc2Data_pi[12]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc2Data_ni[12]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst14 (
     .O(DATA_IN[13]),  // Buffer output
     .I(Adc2Data_pi[13]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc2Data_ni[13]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst15 (
     .O(DATA_IN[14]),  // Buffer output
     .I(Adc2Data_pi[14]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc2Data_ni[14]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst16 (
     .O(DATA_IN[15]),  // Buffer output
     .I(Adc2Data_pi[15]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc2Data_ni[15]) // Diff_n buffer input (connect directly to top-level port)
    );

   IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_inst0 (
      .Q1(q1[0]), // 1-bit output for positive edge of clock
      .Q2(q2[0]), // 1-bit output for negative edge of clock
      .C(clock_data2),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(DATA_IN[0]),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

    IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_inst1 (
      .Q1(q1[1]), // 1-bit output for positive edge of clock
      .Q2(q2[1]), // 1-bit output for negative edge of clock
      .C(clock_data2),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(DATA_IN[1]),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

    IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_inst2 (
      .Q1(q1[2]), // 1-bit output for positive edge of clock
      .Q2(q2[2]), // 1-bit output for negative edge of clock
      .C(clock_data2),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(DATA_IN[2]),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

    IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_inst3 (
      .Q1(q1[3]), // 1-bit output for positive edge of clock
      .Q2(q2[3]), // 1-bit output for negative edge of clock
      .C(clock_data2),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(DATA_IN[3]),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

    IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_inst4 (
      .Q1(q1[4]), // 1-bit output for positive edge of clock
      .Q2(q2[4]), // 1-bit output for negative edge of clock
      .C(clock_data2),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(DATA_IN[4]),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

    IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_inst5 (
      .Q1(q1[5]), // 1-bit output for positive edge of clock
      .Q2(q2[5]), // 1-bit output for negative edge of clock
      .C(clock_data2),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(DATA_IN[5]),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

    IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_inst6 (
      .Q1(q1[6]), // 1-bit output for positive edge of clock
      .Q2(q2[6]), // 1-bit output for negative edge of clock
      .C(clock_data2),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(DATA_IN[6]),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

    IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_inst7 (
      .Q1(q1[7]), // 1-bit output for positive edge of clock
      .Q2(q2[7]), // 1-bit output for negative edge of clock
      .C(clock_data2),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(DATA_IN[7]),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

    IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_inst8 (
      .Q1(q1[8]), // 1-bit output for positive edge of clock
      .Q2(q2[8]), // 1-bit output for negative edge of clock
      .C(clock_data2),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(DATA_IN[8]),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

    IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_inst9 (
      .Q1(q1[9]), // 1-bit output for positive edge of clock
      .Q2(q2[9]), // 1-bit output for negative edge of clock
      .C(clock_data2),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(DATA_IN[9]),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

    IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_inst10 (
      .Q1(q1[10]), // 1-bit output for positive edge of clock
      .Q2(q2[10]), // 1-bit output for negative edge of clock
      .C(clock_data2),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(DATA_IN[10]),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

    IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_inst11 (
      .Q1(q1[11]), // 1-bit output for positive edge of clock
      .Q2(q2[11]), // 1-bit output for negative edge of clock
      .C(clock_data2),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(DATA_IN[11]),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

    IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_inst12 (
      .Q1(q1[12]), // 1-bit output for positive edge of clock
      .Q2(q2[12]), // 1-bit output for negative edge of clock
      .C(clock_data2),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(DATA_IN[12]),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

    IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_inst13 (
      .Q1(q1[13]), // 1-bit output for positive edge of clock
      .Q2(q2[13]), // 1-bit output for negative edge of clock
      .C(clock_data2),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(DATA_IN[13]),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

    IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_inst14 (
      .Q1(q1[14]), // 1-bit output for positive edge of clock
      .Q2(q2[14]), // 1-bit output for negative edge of clock
      .C(clock_data2),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(DATA_IN[14]),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

    IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_inst15 (
      .Q1(q1[15]), // 1-bit output for positive edge of clock
      .Q2(q2[15]), // 1-bit output for negative edge of clock
      .C(clock_data2),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(DATA_IN[15]),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

endmodule