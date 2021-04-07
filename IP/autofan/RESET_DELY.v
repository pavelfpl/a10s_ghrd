module RESET_DELY ( 
   input BUTTON_N  , 
	input OSC_50 , 
   output reg RESET_N_DY  
) ; 


//=======================================================
//  REG/WIRE declarations
//=======================================================
reg [31:0] DELAY_CNT  ; 
  
//=======================================================
//  Structural coding
//=======================================================	

always @(negedge  BUTTON_N or posedge OSC_50  ) 
 if (  !BUTTON_N ) begin 
  RESET_N_DY <=0 ; 
  DELAY_CNT  <=0;  
 end
 else  begin 
    if  ( DELAY_CNT < 50000000 ) DELAY_CNT <= DELAY_CNT+1; 
	 else RESET_N_DY <=1 ; 
 end 
 
endmodule 