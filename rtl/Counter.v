
`timescale 1ns / 100ps

module Counter (
   input wire clk,
   input reg [15:0] POINTS

   ) ;  

always @(posedge clk) begin
	
	  if (POINTS[3:0] >= 4'b1010)begin                             //carryout Tens + what happens if you click twice
	     POINTS[7:4]=POINTS[7:4] + 4'b0001; 
		 POINTS[3:0] =POINTS[3:0] - 4'b1010;
	  end
	  
	  if (POINTS[7:4] >= 4'b1010)begin                             //carryout Hundreds + what happens if you click twice
		 POINTS[11:8]=POINTS[11:8] +4'b0001;
		 POINTS[7:4] =POINTS[7:4] - 4'b1010;
	  end
	  
   end  //always
   
endmodule