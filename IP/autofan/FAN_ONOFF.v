module FAN_ONOFF ( 
  input            RESET_N  , 
  input            CLK_400K  , 

  input  [15:0]    FAN_RPM   ,
  output  reg [15:0] SPEED_RPM    , 
  input  [7:0]     FPGA_T  ,     //remote (FPAG  ) temperature 
  input  [7:0]     BAORD_T ,     //local  (BOARD ) temperature 
  output reg [7:0] FPGA_TEMP_C , 
  output reg [7:0] FPGA_CURR_C , 
  output reg [7:0] BOARD_TEMP_C , 
  output reg       TEMP_UP_FLAG ,
  output reg       FAN_INI ,
  output reg [31:0]CNT  , 
  output reg [7:0] LEV  , 
 
  output reg [7:0] FAN_DAC ,            //FAN DAC to Control FAN's SPEED 
  output           BUSY_GO_HI ,
  output reg       TEMP_HI ,            //TEMP-HI POINTER
  output reg       TEMP_OK ,            //TEMP-OK POINTER
  output reg       TEMP_LO              //TEMP-LO POINTER
  
)  ; 

  wire             TEMP_BUSY ; 
//=======================================================
//  REG/WIRE declarations
//=======================================================
   reg      rTEMP_BUSY ; 
  
//=======================================================
//  Parameter declarations
//=======================================================
//----TEMPERATURE     ----
   parameter TEMP_60C = 60 ; 
   parameter TEMP_55C = 55 ; 
   parameter TEMP_50C = 50 ; 
   parameter TEMP_45C = 45 ; 
   parameter TEMP_40C = 40 ; 
   parameter TEMP_35C = 35 ; 
   parameter TEMP_30C = 30 ;  


//---- FAN RESPONE RPM-----
 parameter RPM_3000 = 3000;
 parameter RPM_3500 = 3500;
 parameter RPM_4000 = 4000;
 parameter RPM_4500 = 4500;
 parameter RPM_5000 = 5000;
 parameter RPM_5500 = 5500;
 parameter RPM_6000 = 6000;
	
//=======================================================
//  Structural coding
//=======================================================

//------ TEMP IC read end ---  
assign   BUSY_GO_HI = ~rTEMP_BUSY & TEMP_BUSY  ;


CLOCKMEM  mm ( .CLK( CLK_400K ) , .CLK_FREQ(400000/20) , .CK_1HZ(TEMP_BUSY ), .CK_OUT()      ) ;
 
// ----FAN by TEMPERATURE Algrithm 

always@( negedge RESET_N or posedge  CLK_400K    ) 
if ( !RESET_N ) begin 
   rTEMP_BUSY <= TEMP_BUSY ;
	SPEED_RPM  = RPM_6000;
end 
else 
begin 
    rTEMP_BUSY <= TEMP_BUSY ;
//-------------------- FAN RPM TRY TURN ---------------------------------
    if  (  BUSY_GO_HI  )  begin 
	    FPGA_TEMP_C  <= FPGA_T  ; 
		 BOARD_TEMP_C <= BAORD_T  ; 
	  	  
//-------------------- FAN GO -------------------------------------------
      begin 
	 
       //---Temperture Level Pointer  ---
       TEMP_HI <=  ( FPGA_T >  TEMP_50C  ) ;
       TEMP_LO <=  ( FPGA_T <= TEMP_30C  ) ;
       TEMP_OK <=  ( FPGA_T >  TEMP_30C  ) && ( FPGA_T <= TEMP_50C  ) ;	 
		 
		 //------ TEMP_UP_FLAG Controller ---			 
		           if (  FPGA_CURR_C  <  FPGA_TEMP_C   )  begin  
				       TEMP_UP_FLAG <= 1 ; 
					    FPGA_CURR_C  <= FPGA_TEMP_C ; 
				     end 
		           else if ( FPGA_CURR_C > FPGA_TEMP_C ) begin  
		             TEMP_UP_FLAG <= 0 ; 
				       FPGA_CURR_C  <= FPGA_TEMP_C  ; 
		           end 
				 
		 //------ ADJ FAN SPEED  by Temperature --- 	  
      if  ( FPGA_T  >  TEMP_60C )   SPEED_RPM    <= RPM_6000 ; 
          else if (TEMP_UP_FLAG ) begin 
               if (FPGA_T  >  TEMP_55C ) SPEED_RPM <= RPM_5500;
          else if (FPGA_T  >  TEMP_50C ) SPEED_RPM <= RPM_4500;					
          else if (FPGA_T  >  TEMP_45C ) SPEED_RPM <= RPM_4000;					
          else if (FPGA_T  >  TEMP_40C ) SPEED_RPM <= RPM_4000;
          else if (FPGA_T  >  TEMP_35C ) SPEED_RPM <= RPM_3500;
          else SPEED_RPM <= RPM_3000;
	  end   	  
     else begin 
               if (FPGA_T <= TEMP_30C) SPEED_RPM <= RPM_3000;
          else if (FPGA_T <= TEMP_35C) SPEED_RPM <= RPM_3500;
          else if (FPGA_T <= TEMP_40C) SPEED_RPM <= RPM_4000;
          else if (FPGA_T <= TEMP_45C) SPEED_RPM <= RPM_4500;
          else if (FPGA_T <= TEMP_50C) SPEED_RPM <= RPM_5000;
          else if (FPGA_T <= TEMP_55C) SPEED_RPM <= RPM_5500;
          else  SPEED_RPM <= RPM_6000;
     end 		  	  
	 end 	 
	end  			   	  
  end	 

  
  
 
endmodule 
