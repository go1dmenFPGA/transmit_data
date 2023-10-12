`timescale 1ps/1ps
module SPORT_tb; //тестбенч для sport

	reg sport_clk_tb = 1;
    reg FS_tb = 1;
    reg [3:0] data_tb = 4'd8;

	SPORT uut(.sport_clk(sport_clk_tb), 
              .FS(FS_tb),
              .data(data_tb));
 			  
	always #500 sport_clk_tb <= ~sport_clk_tb;

    reg [6:0] counter = 0;

    always @(negedge sport_clk_tb) begin
        counter <= counter + 1;
        if ((counter > 100) && (counter < 109)) begin
            FS_tb <= 0;
            data_tb <= data_tb - 1;
        end
        else if (counter == 102)
            data_tb <= 4'd7;
        else begin
            FS_tb <= 1;
            data_tb <= 0;
        end
    end
  			
endmodule
