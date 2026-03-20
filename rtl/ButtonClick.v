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
   input reg [3:0] Button ,       // Buttons
   input reg [1:0] STATE ,
   input wire LT ,
   input wire [7:0] q ,           //PRBS 
   input wire reset,              //reset
   output reg [15:0] SCORE ,      //SCORE
   output reg [3:0] LED           //LEDS
   ) ;  


  // STATE DEFINITION 
   /////////////////////////////////////////////////
   parameter [1:0] S0 = 2'b00 ;   //IDLE         ///
   parameter [1:0] S1 = 2'b01 ;   //RUN GAME     ///
   parameter [1:0] S2 = 2'b10 ;   //END GAME     ///
   parameter [1:0] S3 = 2'b11 ;   //PAUSE GAME   ///
   /////////////////////////////////////////////////  
   integer k ;
   
   always @(posedge clk) begin
      
      if(reset) LED <= 4'b0000;
     
      case(STATE)

        // IDLE state: SCORE should remain zero and all LEDs should be turned off
        /////////////////////////////////////////////////
         S0: begin                                    ///
                                                      ///
            SCORE= 16'b0000_0000_0000_0000;           ///
            LED<= 4'b0000;                            ///
                                                      ///
         end //S0                                     ///
        /////////////////////////////////////////////////
		
        // RUN GAME state: if LT is on, refresh the LEDs with the current q values, chosen as preferred. Then, check if a Button associated with a lit LED is pressed. Then, update the score.
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
         S1: begin                                                                                                                  ///
                                                                                                                                    ///
            if (LT) begin                                                                                                           ///
       	                                                                                                                            ///
               LED[3] <= q[3];                                                                                                      ///
               LED[2] <= q[2];                                                                                                      ///
               LED[1] <= q[1];                                                                                                      ///
               LED[0] <= q[0];                                                                                                      ///
                                                                                                                                    ///
            end //if                                                                                                                ///
                                                                                                                                    ///
            for(k = 0; k < 4; k = k+1) begin                                                                                        ///
                                                                                                                                    ///
               if (Button[k] && LED[k])begin                                                                                        ///
                                                                                                                                    ///
                  LED[k] <= 1'b0;                                                                                                   ///
                  SCORE[3:0] = SCORE[3:0] + 4'b0001;                                                                                ///
                                                                                                                                    ///
               end //if                                                                                                             ///
                                                                                                                                    ///
             end //for                                                                                                              ///
                                                                                                                                    ///
           //carryout Tens and hundreds. If you pressed two buttons at once, you should not lose points                             ///
            if (SCORE[3:0] >= 4'b1010)begin                                                                                         ///
                                                                                                                                    ///
               SCORE[7:4]=SCORE[7:4] + 4'b0001;                                                                                     ///
               SCORE[3:0] =SCORE[3:0] - 4'b1010;                                                                                    ///
                                                                                                                                    ///
            end //if                                                                                                                ///
                                                                                                                                    ///
            else if (SCORE[7:4] >= 4'b1010)begin                                                                                    ///
                                                                                                                                    ///
               SCORE[11:8]=SCORE[11:8] +4'b0001;                                                                                    ///
               SCORE[7:4] =SCORE[7:4] - 4'b1010;                                                                                    ///
                                                                                                                                    ///
            end //if                                                                                                                ///
            else if (SCORE[11:8] >= 4'b1010)begin                                                                                   ///
                                                                                                                                    ///
               SCORE[15:12]=SCORE[15:12] +4'b0001;                                                                                  ///
               SCORE[11:8] =SCORE[11:8] - 4'b1010;                                                                                  ///
                                                                                                                                    ///
            end //if                                                                                                                ///
            if(SCORE[15:12]== 4'b1010) SCORE= 16'b0000_0000_0000_0000; //Set to zero. Impossible but opportune                      ///
                                                                                                                                    ///
         end //S1                                                                                                                   ///
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        // END GAME state: LEDs should be turned off, but the score should not be modified
        //////////////////////////////////////////////////
         S2: begin                                     ///
                                                       ///
             LED<= 4'b0000;                            ///
                                                       ///
         end //S2                                      ///
        //////////////////////////////////////////////////
 
       // PAUSE GAME state: nothing should happen.
 
      endcase
      

   end //always  
 
endmodule