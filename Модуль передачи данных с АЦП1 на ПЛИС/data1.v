`timescale 1ps / 1ps

module data1   (input Adc1DCO_pi,		// 100 MHz clock output from ADC
	            input Adc1DCO_ni,		
	            input[15:0] Adc1Data_pi,
	            input[15:0] Adc1Data_ni,
	            input Adc1OR_pi, //сигнал перегрузки АЦП
	            input Adc1OR_ni, //сигнал перегрузки АЦП
	            output [15:0] d0,
                output [15:0] d1);

    wire clock_data1;
    wire [15:0]data1_adc;
    wire clock_data1_out;

//буферы для тактовой частоты

   IBUFDS #(
      .DIFF_TERM("FALSE"),       // Differential Termination
      .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE" 
      .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
   ) IBUFDS_inst0 (
      .O(clock_data1),  // Buffer output
      .I(Adc1DCO_pi),  // Diff_p buffer input (connect directly to top-level port)
      .IB(Adc1DCO_ni) // Diff_n buffer input (connect directly to top-level port)
   );

   BUFIO BUFIO_inst (
      .O(clock_data1_out), // 1-bit output: Clock output (connect to I/O clock loads).
      .I(clock_data1)  // 1-bit input: Clock input (connect to an IBUF or BUFMR).
   );

//буферы для входных данных
    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst1 (
     .O(data1_adc[0]),  // Buffer output
     .I(Adc1Data_pi[0]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc1Data_ni[0]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst2 (
     .O(data1_adc[1]),  // Buffer output
     .I(Adc1Data_pi[1]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc1Data_ni[1]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst3 (
     .O(data1_adc[2]),  // Buffer output
     .I(Adc1Data_pi[2]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc1Data_ni[2]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst4 (
     .O(data1_adc[3]),  // Buffer output
     .I(Adc1Data_pi[3]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc1Data_ni[3]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst5 (
     .O(data1_adc[4]),  // Buffer output
     .I(Adc1Data_pi[4]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc1Data_ni[4]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst6 (
     .O(data1_adc[5]),  // Buffer output
     .I(Adc1Data_pi[5]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc1Data_ni[5]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst7 (
     .O(data1_adc[6]),  // Buffer output
     .I(Adc1Data_pi[6]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc1Data_ni[6]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst8 (
     .O(data1_adc[7]),  // Buffer output
     .I(Adc1Data_pi[7]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc1Data_ni[7]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst9 (
     .O(data1_adc[8]),  // Buffer output
     .I(Adc1Data_pi[8]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc1Data_ni[8]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst10 (
     .O(data1_adc[9]),  // Buffer output
     .I(Adc1Data_pi[9]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc1Data_ni[9]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst11 (
     .O(data1_adc[10]),  // Buffer output
     .I(Adc1Data_pi[10]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc1Data_ni[10]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst12 (
     .O(data1_adc[11]),  // Buffer output
     .I(Adc1Data_pi[11]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc1Data_ni[11]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst13 (
     .O(data1_adc[12]),  // Buffer output
     .I(Adc1Data_pi[12]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc1Data_ni[12]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst14 (
     .O(data1_adc[13]),  // Buffer output
     .I(Adc1Data_pi[13]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc1Data_ni[13]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst15 (
     .O(data1_adc[14]),  // Buffer output
     .I(Adc1Data_pi[14]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc1Data_ni[14]) // Diff_n buffer input (connect directly to top-level port)
    );

    IBUFDS #(
     .DIFF_TERM("FALSE"),       // Differential Termination
     .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE"
     .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst16 (
     .O(data1_adc[15]),  // Buffer output
     .I(Adc1Data_pi[15]),  // Diff_p buffer input (connect directly to top-level port)
     .IB(Adc1Data_ni[15]) // Diff_n buffer input (connect directly to top-level port)
    );

   IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_inst0 (
      .Q1(d0[0]), // 1-bit output for positive edge of clock
      .Q2(d1[0]), // 1-bit output for negative edge of clock
      .C(clock_data1_out),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(data1_adc[0]),   // 1-bit DDR data input
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
      .Q1(d0[1]), // 1-bit output for positive edge of clock
      .Q2(d1[1]), // 1-bit output for negative edge of clock
      .C(clock_data1_out),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(data1_adc[1]),   // 1-bit DDR data input
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
      .Q1(d0[2]), // 1-bit output for positive edge of clock
      .Q2(d1[2]), // 1-bit output for negative edge of clock
      .C(clock_data1_out),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(data1_adc[2]),   // 1-bit DDR data input
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
      .Q1(d0[3]), // 1-bit output for positive edge of clock
      .Q2(d1[3]), // 1-bit output for negative edge of clock
      .C(clock_data1_out),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(data1_adc[3]),   // 1-bit DDR data input
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
      .Q1(d0[4]), // 1-bit output for positive edge of clock
      .Q2(d1[4]), // 1-bit output for negative edge of clock
      .C(clock_data1_out),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(data1_adc[4]),   // 1-bit DDR data input
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
      .Q1(d0[5]), // 1-bit output for positive edge of clock
      .Q2(d1[5]), // 1-bit output for negative edge of clock
      .C(clock_data1_out),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(data1_adc[5]),   // 1-bit DDR data input
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
      .Q1(d0[6]), // 1-bit output for positive edge of clock
      .Q2(d1[6]), // 1-bit output for negative edge of clock
      .C(clock_data1_out),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(data1_adc[6]),   // 1-bit DDR data input
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
      .Q1(d0[7]), // 1-bit output for positive edge of clock
      .Q2(d1[7]), // 1-bit output for negative edge of clock
      .C(clock_data1_out),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(data1_adc[7]),   // 1-bit DDR data input
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
      .Q1(d0[8]), // 1-bit output for positive edge of clock
      .Q2(d1[8]), // 1-bit output for negative edge of clock
      .C(clock_data1_out),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(data1_adc[8]),   // 1-bit DDR data input
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
      .Q1(d0[9]), // 1-bit output for positive edge of clock
      .Q2(d1[9]), // 1-bit output for negative edge of clock
      .C(clock_data1_out),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(data1_adc[9]),   // 1-bit DDR data input
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
      .Q1(d0[10]), // 1-bit output for positive edge of clock
      .Q2(d1[10]), // 1-bit output for negative edge of clock
      .C(clock_data1_out),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(data1_adc[10]),   // 1-bit DDR data input
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
      .Q1(d0[11]), // 1-bit output for positive edge of clock
      .Q2(d1[11]), // 1-bit output for negative edge of clock
      .C(clock_data1_out),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(data1_adc[11]),   // 1-bit DDR data input
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
      .Q1(d0[12]), // 1-bit output for positive edge of clock
      .Q2(d1[12]), // 1-bit output for negative edge of clock
      .C(clock_data1_out),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(data1_adc[12]),   // 1-bit DDR data input
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
      .Q1(d0[13]), // 1-bit output for positive edge of clock
      .Q2(d1[13]), // 1-bit output for negative edge of clock
      .C(clock_data1_out),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(data1_adc[13]),   // 1-bit DDR data input
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
      .Q1(d0[14]), // 1-bit output for positive edge of clock
      .Q2(d1[14]), // 1-bit output for negative edge of clock
      .C(clock_data1_out),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(data1_adc[14]),   // 1-bit DDR data input
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
      .Q1(d0[15]), // 1-bit output for positive edge of clock
      .Q2(d1[15]), // 1-bit output for negative edge of clock
      .C(clock_data1_out),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(data1_adc[15]),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

endmodule