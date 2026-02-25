//Whack-a-Mole
// 
//
// Marco Mosagna - marco.mosagna@edu.unito.it
// 2026
//
//BCD 4 DIGIT DISPLAY



`timescale 1ns / 100ps

module CounterBCD_4digit_display (

   input  wire clk,          // Clk_div
   input  wire rst,          // reset, active low
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


   ///////////////////////////////////////////
   //   **OPTIONAL: push-button debouncer   //
   ///////////////////////////////////////////

   //wire button_debounced ;
   //Debouncer  Debouncer_button ( .clk(clk), .button(button), .pulse(button_debounced) ) ;


   //////////////////////////////
   //   free-running counter   //
   //////////////////////////////

   reg [24:0] count = 'b0 ;

   always @(posedge clk) begin
      count <= count + 'b1 ;
   end


   //////////////////////////////////////////////////////////////
   // control slice for multiplexing anodes and BCD-boundles   //
   //////////////////////////////////////////////////////////////

   wire refresh_slice ;

   assign refresh_slice = count[1:0] ;    // this choice determines the refresh frequency for 7-segment display digits

   ///////////////////////////////////
   //   multiplexer on BCD slices   //
   ///////////////////////////////////

   reg [3:0] BCD_mux ;

   always @(*) begin

      case( refresh_slice )

         1'b0 : BCD_mux = SCORE[ 3: 0] ;
         1'b1 : BCD_mux = SCORE[ 7: 4] ;
//         2'b10 : BCD_mux = SCORE[11: 8] ;   //Not needed in current inplementation. but might be necessary depending from the BCD model


      endcase
   end   // always


   assign anode[0] = ( refresh_slice == 0 ) ? 1'b1 : 1'b0 ;      //concurrent conditional assignments on wires
   assign anode[1] = ( refresh_slice == 1 ) ? 1'b1 : 1'b0 ;
//   assign anode[2] = ( refresh_slice == 2 ) ? 1'b1 : 1'b0 ;    //Not needed in current inplementation. but might be necessary depending from the BCD model
//   assign anode[3] = ( refresh_slice == 3 ) ? 1'b1 : 1'b0 ;
   



   ///////////////////////////
   //   7-segment decoder   //
   ///////////////////////////

   SevenSegmentDecoder  display_decoder (

      .BCD   (   BCD_mux ),
	  .rst   (       rst ),
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

