`timescale 1ps/1ps
module ppi_tb; //тестбенч для ppi

	reg clk_tb = 1;
    reg send_tb = 0;
    reg [15:0] send_data_tb;
    wire ppi_clk_tb;
    wire ppi_FS_tb;
    wire [15:0] ppi_data_tb;

	PPI uut  (.clk(clk_tb), 
              .send(send_tb),
              .send_data(send_data_tb),
              .ppi_clk(ppi_clk_tb),
              .ppi_FS(ppi_FS_tb),
              .ppi_data(ppi_data_tb));
 			  
	always #500 clk_tb <= ~clk_tb;
    //reg [3:0] delay = 3;
    reg [7:0] q = 0;

	integer simCnt = 0;
	always @ (posedge clk_tb) begin
        if (simCnt == 15) 
            simCnt <= 0;
        else 
            simCnt <= simCnt + 1;
    end

    always @(posedge clk_tb) begin
        if (simCnt > 1)
                send_data_tb <= 0;
            case (simCnt)
                0: begin
                    send_data_tb <= 16'b0000_0000_0000_0011;
                    end

                1: begin
                    send_data_tb <= 16'b0000_0000_0000_0001;
                    end
            endcase
    end

    always @(posedge clk_tb)
        q <= q + 1;

    always @(posedge clk_tb) begin //данный блок служит для проверки того, что передача идет только когда send_tb = 1
        if (q < 200) 
            send_tb <= 1;
        else if (q > 199) 
            send_tb <= 0;
    end
  			
endmodule
