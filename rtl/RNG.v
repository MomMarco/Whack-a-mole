// Whack-a-mole: a simple game of reflexes implemented on FPGA
// 
//
// Marco Mosagna - marco.mosagna@edu.unito.it
// 2026
//
// RANDOM NUMBER GENERATOR, BASED ON THE PSEUDO RANDOM BIT SEQUENCE SEEN IN CLASS

`timescale 1ns / 100ps

module RNG #(parameter [7:0] SEED = 8'hFF)(
   input wire clk ,
   input wire en ,
   input wire pll_locked ,
   output reg [7:0] q
   ) ;  

   always @(posedge clk) begin

	  if(~pll_locked) begin

           q <= SEED ;
	    end 
		
      else if(en) begin
         q[0] <= q[7] ;
         q[1] <= q[0] ;
         q[2] <= q[1] ^ q[7] ; 
         q[3] <= q[2] ^ q[7] ;
         q[4] <= q[3] ^ q[7] ;
         q[5] <= q[4] ;
         q[6] <= q[5] ;
         q[7] <= q[6] ;
      end	 
   end  //always 
   
endmodule