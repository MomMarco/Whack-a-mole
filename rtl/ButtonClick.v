// Whack-a-mole: a simple game of reflexes implemented on FPGA
// 
//
// Marco Mosagna - marco.mosagna@edu.unito.it
// 2026
//
//BUTTON CLICK, LED RESET AND SCORE UPDATE

`timescale 1ns / 100ps

module ButtonClick (
   input wire clk ,
   input reg [3:0] button ,       // buttons
   input reg [1:0] STATE ,
   input wire LCT ,
   input wire [7:0] q ,           //PRBS 
   output reg [15:0] POINT ,      //SCORE
   output reg [3:0] color         //LEDS
   ) ;  


  // STATE DEFINITION 
   /////////////////////////////////////////////////
   parameter [1:0] S0 = 2'b00 ;   //IDLE         ///
   parameter [1:0] S1 = 2'b01 ;   //RUN GAME     ///
   parameter [1:0] S2 = 2'b10 ;   //END GAME     ///
   parameter [1:0] S3 = 2'b11 ;   //PAUSE GAME   ///
   /////////////////////////////////////////////////  
   
   
   always @(posedge clk) begin
      case(STATE)
	  
	    // IDLE state: POINT should remain zero and all LEDs should be turned off
        /////////////////////////////////////////////////
	     S0: begin                                    ///
	                                                  ///
	        POINT= 16'b0000_0000_0000_0000;           ///
	        color= 4'b0000;                           ///
                                                      ///
	     end //S0                                     ///
		/////////////////////////////////////////////////
		
	    // RUN GAME state: if LCT is on, refresh the LEDs with the current q values, chosen as preferred. Then, check if a button associated with a lit LED is pressed. Then, update the score.
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	     S1: begin                                                                                                                  ///
	                                                                                                                                ///
		    if (LCT) begin                                                                                                          ///
       	                                                                                                                            ///
			   color[3] <= q[3] ;                                                                                                   ///
		       color[2] <= q[2] ;                                                                                                   ///
		       color[1] <= q[1] ;                                                                                                   ///
		       color[0] <= q[0] ;                                                                                                   ///
			                                                                                                                        ///
	        end //if                                                                                                                ///
	                                                                                                                                ///
		    else if (button[0] == color[0] && color[0])begin                                                                        ///
	                                                                                                                                ///
               color[0] = 1'b0;                                                                                                     ///
		       POINT[3:0] = POINT[3:0] + 4'b0001;                                                                                   ///
	                                                                                                                                ///
			end //if                                                                                                                ///
			                                                                                                                        ///
	        else if (button[1] == color[1] && color[1])begin                                                                        ///
	                                                                                                                                ///
			   color[1]= 0;                                                                                                         ///
		       POINT[3:0] = POINT[3:0] + 4'b0001;                                                                                   ///
	                                                                                                                                ///
		    end //if                                                                                                                ///
			                                                                                                                        ///
	        else if (button[2] == color[2] && color[2])begin                                                                        ///
			                                                                                                                        ///
	           color[2]= 0;                                                                                                         ///
		       POINT[3:0] = POINT[3:0] + 4'b0001;                                                                                   ///
			                                                                                                                        ///
	        end                                                                                                                     ///
			                                                                                                                        ///
	        else if (button[3] == color[3] && color[3])begin                                                                        ///
			                                                                                                                        ///
	           color[3]= 0;                                                                                                         ///
		       POINT[3:0] = POINT[3:0] + 4'b0001;                                                                                   ///
			                                                                                                                        ///
	        end //if		                                                                                                        ///
		                                                                                                                            ///
		    //carryout Tens and hundreds. If you pressed two buttons at once, you should not lose points                            ///
		    else if (POINT[3:0] >= 4'b1010)begin                                                                                    ///
			                                                                                                                        ///
	           POINT[7:4]=POINT[7:4] + 4'b0001;                                                                                     ///
		       POINT[3:0] =POINT[3:0] - 4'b1010;                                                                                    ///
			                                                                                                                        ///
	        end //if                                                                                                                ///
			                                                                                                                        ///
		    else if (POINT[7:4] >= 4'b1010)begin                                                                                    ///
			                                                                                                                        ///
		       POINT[11:8]=POINT[11:8] +4'b0001;                                                                                    ///
               POINT[7:4] =POINT[7:4] - 4'b1010;                                                                                    ///
			                                                                                                                        ///
	        end //if                                                                                                                ///
                                                                                                                                    ///
         end //S1                                                                                                                   ///
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

         // END GAME state: LEDs should be turned off, but the score should not be modified
		//////////////////////////////////////////////////
	     S2: begin                                     ///
	                                                   ///
	        color= 4'b0000;                            ///
		                                               ///
	     end //S2                                      ///
		//////////////////////////////////////////////////
	  
      endcase
      

   end //always  
 
endmodule




