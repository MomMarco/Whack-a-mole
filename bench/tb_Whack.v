//
// Example testbench module for 110 sequence detector.
//
// Luca Pacher - pacher@to.infn.it
// Spring 2020
//


`timescale 1ns / 100ps

module tb_Whack ;


   /////////////////////////////////
   //   100 MHz clock generator   //
   /////////////////////////////////

   wire clk100 ;

   ClockGen  #(.PERIOD(10.0)) ClockGen_inst (.clk(clk100)) ;


   ///////////////////////////
   //   device under test   //
   ///////////////////////////

   reg rst, START = 1'b0 ;

   reg [3:0] button =4'b0000;
   reg [3:0] Led ;
   reg [6:0] Tsegment ;
   reg [6:0] Ssegment1 ;
   reg [6:0] Ssegment2 ;
   reg [1:0] anodeT ;
   reg [1:0] anodeS1 ;
   reg [1:0] anodeS2 ;
   reg [1:0] STATE; //USATO PER TEST
   //reg [7:0] q;     //USATO PER TEST 2

   Whack DUT ( .clk(clk100), .rst(rst), .START(START), .button(button), .Led(Led), .Tsegment(Tsegment), .Ssegment1(Ssegment1), .Ssegment2(Ssegment2), .anodeT(anodeT), .anodeS1(anodeS1), .anodeS2(anodeS2), .STATE(STATE)) ;

   ///////////////////////
   //   main stimulus   //
   ///////////////////////

   //
   // reset process
   //
 


   //
   // pseudo-random bit sequence (PRBS)
   //
   initial begin     
     
	  
	  #20  rst = 1'b0 ;
	   
      #4000 START = 1'b1 ;   
      
	  #10000 START =1'b0 ;
	  
	  #200 rst = 1'b1 ;
	   
	  #1000 START =1'b1 ;
	  
	  #15000 START =1'b0 ;
	  
	  #35000 START =1'b1 ;
	  
	 // #10000 rst = 1'b1 ;
	  
	 // #2000 rst = 1'b0 ;
	  
	  #90000 START=1'b1 ;
	  
	  #90000 START=1'b0 ;
	  
	  #40000 rst =1'b0 ;
	  
	  #10000 rst =1'b1 ;
	  
	  #1000 START=1'b1 ;
	  
	  
      #50000 $finish ;

   end
   
   initial begin
      
	  #754      // only for better visualization, sample input data at period/2

      repeat (2000) begin
	  
	     #1000 button = $random ;
         #1000 button = 'b0 ;
		 
      end 
	  
      #50000 $finish ;

	  
   end

endmodule

