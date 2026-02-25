//
// Example Moore Finite State Machine (FSM) for 110 sequence detector.
//


`timescale 1ns / 100ps

module SimonProjects #(parameter [7:0] SEED = 8'hFF)(

   input  wire clk,
   input  wire reset,            // synchronous reset, active-high
   input  wire start,            // start button
   input reg [3:0] button,       //SimonSays buttons
   output reg [3:0] score,
   output reg [3:0] colour
   ) ;

   reg [3:0] k;                       //Check for number of random number sequence.
   reg [3:0] i;

   reg [7:0] q = SEED ;
   reg [3:0] z = 4'b0000;   
   reg [3:0] t = 4'b0000;
   reg [3:0] tpre = 4'b0000;
   

   
   wire pll_clk, pll_locked;
   wire enable;
    
	
	PLL  PLL_inst ( .CLK_IN(clk), .CLK_OUT(pll_clk), .LOCKED(pll_locked) ) ;   // generates 100 MHz output clock with maximum input-jitter filtering
	
    TickCounterRst #(.MAX(10)) TickCounter_inst (.clk(pll_clk), .rst(~pll_locked), .tick(enable)) ;      // 10 MHz "tick"   

   // here we choose to use a straight-binary states numbering, but you can choose other codes (e.g. Gray, one-hot, etc.)
   parameter [1:0] S0 = 2'b00 ;
   parameter [1:0] S1 = 2'b01 ;
   parameter [1:0] S2 = 2'b10 ;
   
   
   reg [1:0] STATE, STATE_NEXT ;



   always @(posedge pll_clk) begin
      
      if(reset) begin
         STATE <= S0 ;
		 STATE_NEXT <= S0;
      end
      else
         STATE <= STATE_NEXT ;
	
	  if(~pll_locked) begin

         q <= SEED ;

      end
      else if (enable) begin

         q[0] <= q[7] ;
         q[1] <= q[0] ;
         q[2] <= q[1] ^ q[7] ; 
         q[3] <= q[2] ^ q[7] ;
         q[4] <= q[3] ^ q[7] ;
         q[5] <= q[4] ;
         q[6] <= q[5] ;
         q[7] <= q[6] ;
		 
		 
		 z[3] <= q[7];
		 z[2] <= q[1];
		 z[1] <= q[2];
		 z[0] <= q[4];
		 
	  end  //if
	  
	  if (STATE==S1)
	     
		 colour = z ;
	  
	  else 
	     colour =4'b0000;
		 
   end   // always
   
  

   always @(*) begin


      case ( STATE )

         //default : S0 ;   // catch-all

         S0 : begin       // "GAME OVER" state
		  
		  k= 4'b0000;
            //detected = 1'b0;
		  colour <= button;
		  
          if(start == 1'b1 )
              STATE_NEXT = S1 ;
          else 
              STATE_NEXT = S0 ;

          end


         //_____________________________
         //

         S1 : begin      // "SIMON SAYS" state
			
			
			
			tpre = t ;
			
			i = 4'b0000;

			if(t == 4'b0011)
               STATE_NEXT = S2 ;
			else
			   STATE_NEXT = S1;
			if(tpre==t)
			  t=tpre + 4'b0001 ;
/*			
			if(PULSANTE PREMUTO)
			
			   k=k+4'b0001;
				
*/	    
				  
         end

            

         //_____________________________
         //

         S2 : begin     // "YOU DO" state

            score = k ; 

            if(start == 1'b0) begin
			   STATE_NEXT = S0 ;
			   score = 4'b0000 ;
			end   
		    else
			   STATE_NEXT = S2 ;

         end
		 
      endcase

   end   // always


   // just for reference, pre-place an OBUF primitive on output signal already in RTL
   // OBUF  OBUF_inst (.I(detected_comb), .O(detected)) ;

endmodule