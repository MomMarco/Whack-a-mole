//
// Example testbench module for 110 sequence detector.
//
// Luca Pacher - pacher@to.infn.it
// Spring 2020
//


`timescale 1ns / 100ps

module tb_SimonProjects ;


   /////////////////////////////////
   //   100 MHz clock generator   //
   /////////////////////////////////

   wire clk100 ;

   ClockGen  #(.PERIOD(10.0)) ClockGen_inst (.clk(clk100)) ;


   ///////////////////////////
   //   device under test   //
   ///////////////////////////

   reg rst, start = 1'b0 ;

   reg [3:0] button =4'b0000;
   
   wire tick ;

   SimonProjects  DUT ( .clk(clk100), .reset(rst), .start(start), .button(button), .colour(colour) ) ;


   ///////////////////////
   //   main stimulus   //
   ///////////////////////

   //
   // reset process
   //
   initial begin


      #20  rst = 1'b1 ;
      #175 rst = 1'b0 ;

   end


   //
   // pseudo-random bit sequence (PRBS)
   //
   initial begin

      #646.5      // only for better visualization, sample input data at period/2

      #40 start = 1'b1 ;   // generate 500 consecutive random bit values fed to sequence detector
      
	  #100 start =1'b0 ;
	  
	  #100 start =1'b1 ;
	  
	  #120 start =1'b0 ;
	  
      #10000 $finish ;

   end
   
   initial begin
      
	  #640 button = 4'b0001 ;
	  #20 button = 4'b1111  ;
	  #10 button = 4'b1001  ;
	  
   end

endmodule

