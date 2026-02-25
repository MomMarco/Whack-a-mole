//
// Parameterized modulus-MAX 32-bit tick generator. Use the resulting "tick"
// single clock-pulse as "enable" for your synchronous logic if you need to
// decrease the speed of the data processing without the need of a dedicated
// extra clock signal.
//
// Luca Pacher - pacher@to.infn.it
// Spring 2020
//
// Whack-a-mole: a simple game of reflexes implemented on FPGA
// 
//
// Marco Mosagna - marco.mosagna@edu.unito.it
// 2026
//
//COUNTDOWN TICK COUNTER (SLOW)

`timescale 1ns / 100ps

module  CountdownTickCounter #(parameter integer MAX = 100) (  //100*1000000=1 secondo  100*10 PER TESTING  // default is ~9.6 kHz as for UART baud-rate

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
