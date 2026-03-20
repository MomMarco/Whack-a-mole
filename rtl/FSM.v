// Whack-a-mole: a simple game of reflexes implemented on FPGA
// 
//
// Marco Mosagna - marco.mosagna@edu.unito.it
// 2026
//
// FINITE STATE MACHINE

`timescale 1ns / 100ps

module FSM (

   input  wire ST,
   input  wire RESET,                // Asynchronous reset, active-high
   input  wire START,              // START latch
   input  wire CT,
   input reg [1:0] STATE,          // Used in simulations, to see the State in the Testbench waveforms page.
   output reg GE,
   output reg [7:0] Timer
   ) ;   

  
   // STATE DEFINITION 
   ////////////////////////////////////////////
   parameter [1:0] S0 = 2'b00 ;   //IDLE    ///
   parameter [1:0] S1 = 2'b01 ;   //PLAY    ///
   parameter [1:0] S2 = 2'b10 ;   //END     ///
   parameter [1:0] S3 = 2'b11 ;   //PAUSE   ///
   ////////////////////////////////////////////   
   
   always @(posedge ST) begin
     
     
      if(~RESET) begin                              //Asynchronous Reset: if false, Return to State 0, Return Score to 0 and Countdown to 10, disable Tick counters for Leds and Countdown, reset the moles and turn the displays off.
         STATE <= S0 ;
         GE <= 1'b0;
      end

      else begin 


      case(STATE)                              //Begin Case definition
 
         //IDLE State: Wait for START Switch On to switch to PLAY.
         /////////////////////////////////////////////////////////////////////////////////////////
          S0: begin                                                                            ///
                                                                                               ///
             count <= 8'b0110_0000 ;              //Here the time lenght of the game is set    ///
                                                                                               ///
             if(START)begin                                                                    ///
                                                                                               ///
                STATE = S1;                                                                    ///
                GE = 1'b1;                                                                     ///
             end //if                                                                          ///
                                                                                               ///
             else STATE= S0;                                                                   ///
                                                                                               ///
         end //S0                                                                              ///
        //////////////////////////////////////////////////////////////////////////////////////////
        
        //PLAY State: the game is ON for a length of a set number of  CT. The Leds are switched every LT. When the time is over, switch to END state. If START is switched off, go to PAUSE STATE
        //////////////////////////////////////////////////////////////////////////////////////////   
         S1: begin                                                                             ///
                                                                                               /// 
            if (CT) begin                                                                      ///
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
               GE = 1'b0;                                                                      ///
                                                                                               ///
            end //if                                                                           ///
                                                                                               ///
            else if (~START) begin                                                             ///
                                                                                               ///			
               STATE= S3;                                                                      ///
               GE = 1'b0;                                                                      ///
                                                                                               ///
            end //if                                                                           ///
                                                                                               ///
  	        else STATE = S1;	                                                               ///
            	                                                                               ///
         end //S1                                                                              ///
        //////////////////////////////////////////////////////////////////////////////////////////

        //END State: Display the Score, time at 0, until the START Switch is pulled off
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

        //PAUSE State: Display the Score, time at last value, until the START Switch is pulled on
        //////////////////////////////////////////////////////////////////////////////////////////   
         S3: begin                                                                             ///
                                                                                               ///		    
            if(START)begin                                                                     ///
                                                                                               ///
               STATE = S1;                                                                     ///
               GE = 1'b1;                                                                      ///
                                                                                               ///
            end //if                                                                           ///
                                                                                               ///
         end //S3                                                                              ///
        //////////////////////////////////////////////////////////////////////////////////////////
		
        endcase //STATE
   
      end //else 
	  
   end //always

endmodule