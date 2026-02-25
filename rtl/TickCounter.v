// Whack-a-mole: a simple game of reflexes implemented on FPGA
// 
//
// Marco Mosagna - marco.mosagna@edu.unito.it
// 2026
//
// GENERAL TICK COUNTER (FAST)


`timescale 1ns / 100ps


//module TickCounter #(parameter integer MAX = 10) (           // 100 ns SIMULATION default is ~9.6 kHz as for UART baud-rate
module TickCounter #(parameter integer MAX = 1000000) (      //  10 ms PRACTICE default is ~9.6 kHz as for UART baud-rate

   input  wire clk,      // assume 100 MHz input clock
   input wire en,
   
   output reg  tick      // single clock-pulse input

   ) ;


   //////////////////////////////////////////
   //   modulus-MAX free-running counter   //
   //////////////////////////////////////////

   //
   // **NOTE
   //
   // Assuming 100 MHz input clock we can generate up to 2^32 -1 different tick periods, e.g.
   //
   // MAX =    10 => one "tick" asserted every    10 x 10 ns = 100 ns  => logic "running" at  10 MHz
   // MAX =   100 => one "tick" asserted every   100 x 10 ns =   1 us  => logic "running" at   1 MHz
   // MAX =   200 => one "tick" asserted every   200 x 10 ns =   2 us  => logic "running" at 500 MHz
   // MAX =   500 => one "tick" asserted every   500 x 10 ns =   5 us  => logic "running" at 200 kHz
   // MAX =  1000 => one "tick" asserted every  1000 x 10 ns =  10 us  => logic "running" at 100 kHz
   // MAX = 10000 => one "tick" asserted every 10000 x 10 ns = 100 us  => logic "running" at  10 kHz etc.
   //

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
      end   // if
    end //always
endmodule

