module FSM #(parameter [7:0] SEED = 8'hFF)(

   input  wire clk,
   input  wire rst,            // synchronous rst, active-high
   input  wire start,            // start button
   input reg [3:0] button,       // buttons
   output reg [3:0] color,       // Moles
   output reg [6:0] Tsegment,    // 7-segment for the Timer
   output reg [6:0] Ssegment,     // 7-segment for the Score
   output reg [3:0] anode   
   ) ;




   always @(posedge clk) begin
     
	 if(rst) begin
         STATE <= S0 ;
		 SCORE <= 12'b0000_0000_0000 ;
		 count <= 8'b0000_0000 ;
		 
     end

	 
	 else begin 

	    if(~pll_locked) begin

           q <= SEED ;
	    end 
		
	    case(STATE)
     
    	 S0: begin
	        SCORE= 12'b0000_0000_0000;
	        color = 4'b0000;
			count <= 8'b0001_0000 ;
			
	        if(start==1'b1) begin
	           
		       
			   
		       STATE = S1;
	        end
	  
	        else begin
               count <= 8'b0001_0000;
   	           STATE= S0;
	        end
         end //S0
   
         S1: begin
      
		 
		 if(RC_Clk_div)begin
		 
			
			color[3] <= q[3];
		    color[2] <= q[2];
		    color[1] <= q[1];
		    color[0] <= q[0];
			   
	        end
		 
		 if (CD_Clk_div) begin
		   
			
			if(count[7:4]==4'b0001) begin
			   count[7:4] = count[7:4] - 4'b0001;
			   count[3:0]=4'b1001;
			end
			
			else count[3:0] =count[3:0] - 4'b0001;
     			
	     end 
	  
	     if (count == 4'b0000) begin
		 STATE= S2;
		 color <= 4'b0000;
		 end  
  	     else STATE = S1;	

	          
	 
         end //S1
   
         S2: begin
		    
		
		    
	        if (start == 1'b0)begin
	           STATE = S0;
	        end
	        else STATE = S2;
     	  
          end
        endcase
   
   end
   end
   
endmodule