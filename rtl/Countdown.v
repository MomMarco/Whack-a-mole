

`timescale 1ns / 100ps

module Countdown (
   input wire clk ,
   input reg [11:0] count
   ) ;  





   if(clk) begin
		   		
			if(count[7:4]==4'b0001) begin
			   count[7:4] = count[7:4] - 4'b0001;
			   count[3:0]=4'b1001;
			end
			
			else count[3:0] = count[3:0] - 4'b0001;

 			
   end

endmodule