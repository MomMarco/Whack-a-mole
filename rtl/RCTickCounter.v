// Whack-a-mole: a simple game of reflexes implemented on FPGA
// 
//
// Marco Mosagna - marco.mosagna@edu.unito.it
// 2026
//
//RANDOM NUMBER GENERATOR TICK COUNTER (MEDIUM-SLOW)

`timescale 1ns / 100ps

module  RCTickCounter #(parameter integer MAX = 75 )(    // 75*1000000= 0,75 secondi 50*10 PER TESTING  // default is ~9.6 kHz as for UART baud-rate

   input  wire clk,      // assume 100 MHz input clock
   input wire en,
   
   output reg  tick      // single clock-pulse input

   ) ;


   //////////////////////////////////////////
   //   modulus-MAX free-running counter   //
   //////////////////////////////////////////


   reg [$clog2(MAX)-1:0] count = 'b0 ;   // **IMPORTANT: use the ceil-function on log2(MAX) to determine how many FlipFlops are required to count from 0 to MAX

   always @(posedge clk) begin
      if(en)begin
         if( count == MAX-1 ) begin

            count <= 'b0 ;             // force the roll-over
            tick  <= 1'b1 ;            // assert a single-clock pulse each time the counter resets

         end
         else begin

            count <= count + 'b1 ;
            tick  <= 1'b0 ;

         end    // if
      end
	  else tick <= 1'b0 ;
   end   // always

endmodule
