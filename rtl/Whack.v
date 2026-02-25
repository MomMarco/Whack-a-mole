// Whack-a-mole: a simple game of reflexes implemented on FPGA
// 
//
// Marco Mosagna - marco.mosagna@edu.unito.it
// 2026
//
//TOP LEVEL RTL


`timescale 1ns / 100ps

module Whack (

   input  wire clk,
   input  wire rst,                // Asynchronous reset, active-high
   input  wire START,              // START latch
   input reg [3:0] button,         // buttons
   output wire [3:0] Led,          // "Moles", presented as leds
   output reg [6:0] Tsegment,      // 7-segment for the Countdown first 2 digits
   output reg [6:0] Ssegment1,     // 7-segment for the Score first 2 digits
   output reg [6:0] Ssegment2,     // 7-segment for the Score second 2 digits
   output reg [1:0] anodeT,        // Used to establish which time digit to refresh
   output reg [1:0] anodeS1,       // Used to establish which of the first two score digit to refresh
   output reg [1:0] anodeS2        // Used to establish which of the last two score digit to refresh
   //output reg [1:0] STATE        // Used in simulations, to see the State in the Testbench waveforms page.
   ) ;
   
   
   // REGISTERS
   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   reg [7:0] q ;                                                              // PRBS register, used to maximize randomness. To "change" the sequence shown on the leds, you can change the logic in ButtonClick.v lines frp, 37 to 40  ///
   reg [7:0] count = 8'b0001_0000;                                            // Countdown register, defines the number displayed on the countdown BCD                                                                                  ///
   wire [15:0] SCORE ;                                                        // Score register, defines the score reached during and after the game                                                                                    ///
   reg TickEnable = 1'b0 ;                                                    // Enables the Tick counter for Countdown and Led Reset. It needs to be a register for procedural defining                                                ///
   reg [1:0]STATE ;                                                           // State register used for the game finite state machine                                                                                                  /// 
   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  
   // STATE DEFINITION 
   /////////////////////////////////////////////////
   parameter [1:0] S0 = 2'b00 ;   //IDLE         ///
   parameter [1:0] S1 = 2'b01 ;   //RUN GAME     ///
   parameter [1:0] S2 = 2'b10 ;   //END GAME     ///
   parameter [1:0] S3 = 2'b11 ;   //PAUSE GAME   ///
   /////////////////////////////////////////////////   
   
   // WIRES
   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   wire pll_clk, pll_locked ;                                                 // PLL wires                                                  ///
   wire enable=1'b1 ;                                                         // enable used for Clk_div and RandomNumberGenerator          ///
   wire Clk_div, LCT, CCT ;                                                   //  divided clocks for: general use, Led Refresh, Countdown   ///
   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   
   
   // PLL
   /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
   PLL  PLL_inst ( .CLK_IN(clk), .CLK_OUT(pll_clk), .LOCKED(pll_locked) ) ;   // generates 100 MHz output clock with maximum input-jitter filtering  ///
   /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   
   
   // TICK COUNTERS 
   //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   TickCounter StatusTick (.clk(clk), .tick(Clk_div), .en(enable));                  // General "tick counter"-stile clock divider. Used for button check, debouncers, score and timing display refresh, state check, RNG refresh and the other TickCounters  ///
   RCTickCounter LedTick (.clk(Clk_div), .tick(LCT), .en(TickEnable));               // Led(the moles) "tick counter"-stile clock divider. Used to refrsesh the moles state during the game. LCT means Led Clock Ticks                                        ///
   CountdownTickCounter CountdownTick (.clk(Clk_div), .tick(CCT), .en(TickEnable));  // Countdown "tick counter"-stile clock divider. Used for the game timer. CCT means Countdown Clock Ticks                                                                ///
   //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
   // BUTTON DEBOUNCERS
   //////////////////////////////////////////////////////////////////////////////// 
   reg[3:0] button_db;                                                          ///
                                                                                ///
   Debouncer DBB1 (.clk(Clk_div), .button(button[0]), .pulse(button_db[0]));    ///
   Debouncer DBB2 (.clk(Clk_div), .button(button[1]), .pulse(button_db[1]));    ///
   Debouncer DBB3 (.clk(Clk_div), .button(button[2]), .pulse(button_db[2]));    ///
   Debouncer DBB4 (.clk(Clk_div), .button(button[3]), .pulse(button_db[3]));    ///
   ////////////////////////////////////////////////////////////////////////////////
   
   // COUNTER DISPLAY -- LOGIC FOR THE TIMER AND SCORING DISPLAY. THE SCORE IS SEPARATED IN TWO DUE TO THE BCD MODEL USED
   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   CounterBCD_4digit_display Scoring1 (.clk(Clk_div), .rst(~rst), .segA(Ssegment1[6]), .segB(Ssegment1[5]), .segC(Ssegment1[4]), .segD(Ssegment1[3]), .segE(Ssegment1[2]), .segF(Ssegment1[1]), .segG(Ssegment1[0]),.SCORE(SCORE[7:0]),.anode(anodeS1));    ///  
   CounterBCD_4digit_display Scoring2 (.clk(Clk_div), .rst(~rst), .segA(Ssegment2[6]), .segB(Ssegment2[5]), .segC(Ssegment2[4]), .segD(Ssegment2[3]), .segE(Ssegment2[2]), .segF(Ssegment2[1]), .segG(Ssegment2[0]),.SCORE(SCORE[15:8]),.anode(anodeS2));   ///     
   CounterBCD_4digit_display Timing (.clk(Clk_div), .rst(~rst), .segA(Tsegment[6]), .segB(Tsegment[5]), .segC(Tsegment[4]), .segD(Tsegment[3]), .segE(Tsegment[2]), .segF(Tsegment[1]), .segG(Tsegment[0]),.SCORE(count),.anode(anodeT));                   ///
   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

   
   // RANDOM NUMBER GENERATOR 
   /////////////////////////////////////////////////////////////////////////////////////////////
   RNG RandomNumberGenerator (.clk(Clk_div), .en(enable), .pll_locked(pll_locked), .q(q));   ///
   /////////////////////////////////////////////////////////////////////////////////////////////
   
      
 
   // BUTTON CLICK -- LIGHTS THE LEDS BASED ON THE RNG AND CHECKS THE CLICK OF THE BUTTON, THEN UPDATES THE SCORE
   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   ButtonClick Button_Click (.clk(Clk_div), .button(button), .STATE(STATE), .LCT(LCT), .q(q[7:4]), .color(Led), .POINT(SCORE));             ///
   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

   
   
   // Here begins the core of the Finite State Machine code.
     
   always @(posedge Clk_div) begin
     
	  
      if(~rst) begin                              //Asynchronous Reset: if false, Return to State 0, Return Score to 0 and Countdown to 10, disable Tick counters for Leds and Countdown, reset the moles and turn the displays off.
         STATE <= S0 ;
		 TickEnable <= 1'b0;
		 
      end

	  else begin 

	     case(STATE)                              //Begin Case definition
		 
		 //IDLE State: Wait for START Switch On to switch to RUN GAME.
         /////////////////////////////////////////////////////////////////////////////////////////
    	  S0: begin                                                                            ///
			                                                                                   ///
		     count <= 8'b0110_0000 ;              //Here the time lenght of the game is set    ///
                                                                                               ///
	         if(START)begin                                                                    ///
			                                                                                   ///
			    STATE = S1;                                                                    ///
			    TickEnable = 1'b1;                                                             ///
			                                                                                   ///
			 end //if                                                                          ///
	                                                                                           ///
			 else STATE= S0;                                                                   ///
                                                                                               ///
         end //S0                                                                              ///
        //////////////////////////////////////////////////////////////////////////////////////////
        
		//RUN GAME State: the game is ON for a length of a set number of  CCT. The Leds are switched every LCT. When the time is over, switch to END GAME state. If START is switched off, go to PAUSE GAME STATE
        //////////////////////////////////////////////////////////////////////////////////////////   
         S1: begin                                                                             ///
	                                                                                           /// 
		    if (CCT) begin                                                                     ///
	                                                                                           ///	    
    	       if(count[7:4]>=4'b0001 && count[3:0]==4'b0000) begin                            ///
			                                                                                   ///
				  count[7:4] = count[7:4] - 4'b0001;                                           ///
			      count[3:0]=4'b1001;                                                          ///
				                                                                               ///
			   end //if                                                                        ///
			                                                                                   ///
			   else count[3:0] =count[3:0] - 4'b0001;                                          ///
     			                                                                               ///
	        end //if                                                                           ///
			                                                                                   ///
	        if (count == 4'b0000) begin                                                        ///
			                                                                                   ///
		       STATE= S2;                                                                      ///
		       TickEnable = 1'b0;                                                              ///
			                                                                                   ///
		    end //if                                                                           ///
		                                                                                       ///
            else if (~START) begin                                                             ///
			                                                                                   ///			
		       STATE= S3;                                                                      ///
		       TickEnable = 1'b0;                                                              ///
			                                                                                   ///			   
		    end //if                                                                           ///
		                                                                                       ///
  	        else STATE = S1;	                                                               ///
 	          	                                                                               ///
         end //S1                                                                              ///
        //////////////////////////////////////////////////////////////////////////////////////////

        //END GAME State: Display the Score, time at 0, until the START Switch is pulled off
        //////////////////////////////////////////////////////////////////////////////////////////
         S2: begin                                                                             ///                      
		                                                                                       ///
	        if (~START)begin                                                                   ///
			                                                                                   ///
	           STATE = S0;                                                                     ///
			                                                                                   ///	        
			end //if                                                                           ///
			                                                                                   ///			
	        else STATE = S2;                                                                   ///
			                                                                                   ///
          end //S2                                                                             ///
        ////////////////////////////////////////////////////////////////////////////////////////// 

		//PAUSE GAME State: Display the Score, time at last value, until the START Switch is pulled on
        //////////////////////////////////////////////////////////////////////////////////////////   
		 S3: begin                                                                             ///
			                                                                                   ///		    
		    if(START)begin                                                                     ///
			                                                                                   ///
			   STATE = S1;                                                                     ///
			   TickEnable = 1'b1;                                                              ///
			                                                                                   ///
			end //if                                                                           ///
			                                                                                   ///
		 end //S3                                                                              ///
        //////////////////////////////////////////////////////////////////////////////////////////
		
        endcase //STATE
   
      end //else 
	  
   end //always
   
endmodule