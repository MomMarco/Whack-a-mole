//Whack-a-Mole
// 
//
// Marco Mosagna - marco.mosagna@edu.unito.it
// 2026
//
//BCD 4 DIGIT DISPLAY



`timescale 1ns / 100ps

module CounterBCD_2digit_display (

   input  wire clk,          // Clk_div
   input  wire RESET,          // reset, active low
   input reg [7:0] SCORE,    //Either time, top of the score or bottom of the score
   
   
   output wire segA,         //Segments 
   output wire segB,
   output wire segC,
   output wire segD,
   output wire segE,
   output wire segF,
   output wire segG,
   output reg [1:0] anode    //Used to determine which digit is displayed

   ) ;

   reg refresh_slice = 'b0 ;
   ///////////////////////////////////
   //   multiplexer on BCD slices   //
   ///////////////////////////////////

   reg [3:0] BCD_mux ;

   always @(posedge clk) begin
      refresh_slice <= refresh_slice + 'b1 ;
      case( refresh_slice )

         1'b0 : BCD_mux = SCORE[ 3: 0] ;
         1'b1 : BCD_mux = SCORE[ 7: 4] ;


      endcase
   end   // always


   assign anode[1] = ( refresh_slice == 0 ) ? 1'b1 : 1'b0 ;      //concurrent conditional assignments on wires
   assign anode[0] = ( refresh_slice == 1 ) ? 1'b1 : 1'b0 ;

   
   ///////////////////////////
   //   7-segment decoder   //
   ///////////////////////////

   SevenSegmentDecoder  display_decoder (

      .BCD   (   BCD_mux ),
	  .rst   (     RESET ),
      .segA  (      segA ),
      .segB  (      segB ),
      .segC  (      segC ),
      .segD  (      segD ),
      .segE  (      segE ),
      .segF  (      segF ),
      .segG  (      segG ),
      .DP    (           )

   ) ;

endmodule

