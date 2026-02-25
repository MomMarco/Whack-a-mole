

`timescale 1ns / 100ps

module ResetColors (
   input wire clk ,
   input reg [4:0] color,
   input reg [7:0] q
   ) ;  



   always @(posedge clk) begin


			color[3] <= q[3];
		    color[2] <= q[2];
		    color[1] <= q[1];
		    color[0] <= q[0];
			   

   end //always
   
endmodule