module FAN_TEMP_I2C ( 
   input            RESET_N, 
   input            CLK_50,	
   output           I2C_SCL, 
   inout            I2C_SDA,
	//---FAN IC      
	input      [12:0] SPEED_RPM, 
	output     reg [7:0] DAC,
   input      [7:0] CONFIG ,
	input      [7:0] ALARM_ENABLE , 
	input      [7:0] GPIO_DEF, 
	input      [7:0] TACHOMETER  , 
   output reg       SENS_DONE	,
	input            RD_TR, 
	output reg [7:0] ALARM,	
	output reg [7:0] TACH0 , 
	output     [15:0]FAN_RPM  , 	
	
	//---TEMP IC 
	output reg [7:0] MFG_ID  ,
	output reg [7:0] DEV_ID  ,
	output reg [7:0] LOCT1_H ,
	output reg [7:0] REMT1_H ,
	output reg [7:0] STATUS  ,
	output           TEMP_BUSY  , 
	
	
	//--TEST -- 
	output           CLK_400K ,
   output reg       I2C_LO0P,
	
	//-
	output reg [7:0] SLAVE_ADDR , 
   output reg [7:0] ST ,
   output reg [7:0] CNT,
	output reg [7:0] WCNT,
   output reg [7:0] W_WORD_DATA,
   output reg [7:0] W_POINTER_REG,
	
	output           W_WORD_END ,
   output reg       W_WORD_GO ,
	
	output     [7:0] WORD_ST,
	output     [7:0] WORD_CNT,
	output     [7:0] WORD_BYTE	,
   output     [7:0] R_DATA,
	input            BUSY_GO_HI 
	
);



//<------



//=======================================================
//  WIRE /REGISETER 
//=======================================================

//--I2C Main Controller--- 
reg [31:0] DELY ;

//-----I2C-BUS-I/O----
wire   SDAO ;
wire   W_WORD_SCL ; 
wire   W_WORD_SDAO ;  
wire   W_POINTER_SCL ; 
wire   W_POINTER_END ; 
reg    W_POINTER_GO ; 
wire   W_POINTER_SDAO ; 
wire   R_SCL; 
wire   R_END; 
reg    R_GO; 
wire   R_SDAO;  

reg  			[12:0] FAN_RPS;
reg  			[7:0]  KTACH;


//=======================================================
//  Parameter  
//=======================================================
// I2C  W/R NUMBER 
parameter    WRITE_MAX     =7; 
parameter    READ_MAX      =8; 

//--- Temperature-Sensor IC (TMP441) Register -----    
parameter    SLAVE_ADDR_T 	=8'h38; 

parameter    P_CONF1       =8'h09;// Write configuration byte
parameter    P_CONF2       =8'h0a;// Write configuration byte
parameter    P_RATE        =8'h0B;// Write conversion rate byte

parameter    P_MFG_ID      =8'hFE; //55h
parameter    P_DEV_ID      =8'hFF; //41h
parameter    P_LOCT1_H     =8'h00; //Read local temperature
parameter    P_LOCT1_L     =8'h10; //Read local temperature
parameter    P_REMT1_H     =8'h01; //Read remote temperature: returns latest temperature
parameter    P_REMT1_L     =8'h11; //Read remote temperature: returns latest temperature
parameter    P_REMT2_H     =8'h02; //Read remote temperature: returns latest temperature
parameter    P_REMT2_L     =8'h12; //Read remote temperature: returns latest temperature
parameter    P_STATUS      =8'h08; //Read status byte (flags, busy signal)
    
//--- Fan IC (MAX6650) Register -----    
parameter    SLAVE_ADDR_F   =8'h90; 
parameter    P_SPEED        =8'h00;
parameter    P_CONFIG       =8'h02; 
parameter    P_DAC          =8'h06; 
parameter    P_TACH0        =8'h0c;
parameter    P_ALARM_ENABLE =8'h08;  
parameter    P_GPIO_DEF     =8'h04;  
parameter    P_ALARM        =8'h0a; 
parameter    P_TaC          =8'h16 ; 
//--- Fan SPEED KSCALE
parameter    KSCALE         =4; 

//------------------------------------
//=======================================================
//  Structural coding
//======================================================= 
//--Fan speed Transform--
always@(posedge CLK_400K )
begin 
  FAN_RPS <= SPEED_RPM /60;
  KTACH   <= ( ( 12'd992 * KSCALE)  / FAN_RPS)-1;
end 

//--FAM SPEED PRM ( Revolution(s) Per Minute ) --- 
assign FAN_RPM  = 	( TACH0<=1 )?0 : (60 * TACH0) /2   ; // TACH0 : pulse/s
                                                          // 2 :show fan have 2pcs hall-sensor 
											                         // 60: cycle/1minute 
//-- Temperature Read ready -- 
assign TEMP_BUSY = STATUS[7] ;
																	 
//-- I2C Clock 400kHZ generater -- 
CLOCKMEM k400( .CLK(CLK_50),.CLK_FREQ (125),.CK_1HZ( CLK_400K  )  ) ; 


//--I2C Main Controller--- 
always @(negedge RESET_N or posedge CLK_400K )begin 
if (!RESET_N  ) begin 
    ST <=0;
 	 W_POINTER_GO <=1;
    R_GO  <=1 ;		 
	 W_WORD_GO <=1;
	 WCNT <=0;  
	 CNT  <=0;
	 DELY <=0 ; 	
	 SENS_DONE <=0; 
end 
else 
case (ST)
0: begin 
    ST<=30; //---First ,  to do I2C write . 
	 W_POINTER_GO <=1;
    R_GO  <=1 ;		 
	 W_WORD_GO <=1;
	 WCNT <=0;  
	 CNT  <=0;
	 DELY <=0 ; 	
	 SENS_DONE <=0; 
   end
//------------- READ -------	
1: begin 
    ST<=2;
	 SENS_DONE <=0; 
	end	
2: begin
		  //TEMP READ    
		       if ( CNT==0)      {SLAVE_ADDR[7:0] ,W_POINTER_REG}<= {SLAVE_ADDR_T[7:0] ,P_STATUS };		  
		  else if ( CNT==1)      {SLAVE_ADDR[7:0] ,W_POINTER_REG}<= {SLAVE_ADDR_T[7:0] ,P_MFG_ID };
		  else if ( CNT==2)      {SLAVE_ADDR[7:0] ,W_POINTER_REG}<= {SLAVE_ADDR_T[7:0] ,P_DEV_ID  };
		  else if ( CNT==3)      {SLAVE_ADDR[7:0] ,W_POINTER_REG}<= {SLAVE_ADDR_T[7:0] ,P_LOCT1_H };
		  else if ( CNT==4)      {SLAVE_ADDR[7:0] ,W_POINTER_REG}<= {SLAVE_ADDR_T[7:0] ,P_REMT1_H};
        // FAN READ 
	     else if ( CNT==5)      {SLAVE_ADDR[7:0] ,W_POINTER_REG}<= {SLAVE_ADDR_F[7:0] ,P_ALARM };
		  else if ( CNT==6)     {SLAVE_ADDR[7:0] ,W_POINTER_REG}<= {SLAVE_ADDR_F[7:0] ,P_TACH0 };
		  else if ( CNT==7)     {SLAVE_ADDR[7:0] ,W_POINTER_REG}<= {SLAVE_ADDR_F[7:0] ,P_DAC };
		                
	if ( W_POINTER_END ) begin  
	   W_POINTER_GO  <=0; 
		ST<=3 ; 
		DELY<=0;  
	 end
	end                
	//------- Write Pointer
3: begin 
    DELY  <=DELY +1;
    if ( DELY ==2 ) begin 
      W_POINTER_GO  <=1;
      ST<=4 ; 
	 end
	end       
4: begin 
    if  ( W_POINTER_END ) ST<=5 ; 	
	end              
5: begin 
    ST<=6 ; 
	end 
	//------- Read DATA  		 
6: begin 
	 if ( R_END ) begin  
	  R_GO  <=0; 
	  ST<=7 ; 
	  DELY<=0; 
	 end
	end                
7: begin 
    DELY  <=DELY +1;
    if ( DELY ==2 ) begin 	 
      R_GO  <=1;
      ST<=8 ; 
	 end
	end       
8: begin 
     ST<=9 ; 
	end       
9: begin 
   if  ( R_END ) 
	 begin 		
	 	//-- TEMP READ 
		        if ( CNT==0) 	STATUS <=R_DATA ;
		   else if ( CNT==1) 	MFG_ID <=R_DATA ; 
		   else if ( CNT==2) 	DEV_ID <=R_DATA ; 
		   else if ( CNT==3) 	LOCT1_H<=R_DATA ; 
		   else if ( CNT==4)    REMT1_H<=R_DATA ;
	      //---FAN READ  
		   else if ( CNT==5) 	ALARM<=R_DATA ; 
		   else if ( CNT==6) 	TACH0<=R_DATA ;
		   else if ( CNT==7) 	DAC<=R_DATA ;
	      CNT<=CNT+1 ;
	      ST<=10 ; 	
	 end 
  end	
10: begin   
     if ( CNT == READ_MAX) 
	   begin  
	    CNT <= 0 ;   
		 ST<=29; 
		end
	  else begin   
	        ST<=1;
			  if ( TEMP_BUSY  ) CNT <= 0 ;  
		end 	
		  DELY <=0;
	     W_POINTER_GO <=1;
        R_GO         <=1 ;		 
	     W_WORD_GO    <=1; 		    		 		  
	 end 
//----  READ END ----

//----  WRITE----
29: begin 
     if (DELY < 10 ) DELY <=DELY+1; 
	  else  ST<=30; 
    end	
30: begin 
     if ( BUSY_GO_HI  ) ST<=31; 
	  WCNT<=0 ; 
	  SENS_DONE <=1; 
    end	
31: begin 
      //FAN WRITE 
           if ( WCNT==0) begin {SLAVE_ADDR ,W_POINTER_REG ,W_WORD_DATA} <= { SLAVE_ADDR_F ,P_CONFIG      ,CONFIG };  end
	   else if ( WCNT==1) begin {SLAVE_ADDR ,W_POINTER_REG ,W_WORD_DATA} <= { SLAVE_ADDR_F ,P_SPEED       ,KTACH  };  end		
		else if ( WCNT==2) begin {SLAVE_ADDR ,W_POINTER_REG ,W_WORD_DATA} <= { SLAVE_ADDR_F ,P_ALARM_ENABLE,ALARM_ENABLE}; end		  
      else if ( WCNT==3) begin {SLAVE_ADDR ,W_POINTER_REG ,W_WORD_DATA} <= { SLAVE_ADDR_F ,P_GPIO_DEF,    GPIO_DEF}; end		 

      //TEMP WRITE 
      else if ( WCNT==4) begin {SLAVE_ADDR ,W_POINTER_REG ,W_WORD_DATA} <= { SLAVE_ADDR_T ,P_CONF1, 8'h00  } ;  end //onvert continuouslyeasurement range (–55°C to +127°C)
      else if ( WCNT==5) begin {SLAVE_ADDR ,W_POINTER_REG ,W_WORD_DATA} <= { SLAVE_ADDR_T ,P_CONF2, 8'h0e  } ;  end //1 = External channel 2 enabled//1 = External channel 1 enabled//1 = Local channel enabled// = Resistance correction enabled
      else if ( WCNT==6) begin {SLAVE_ADDR ,W_POINTER_REG ,W_WORD_DATA} <= { SLAVE_ADDR_T ,P_RATE , 8'h00  } ;  end // ONVERSIONS/ 0.5
			
		       
	 if (  W_WORD_END ) begin  
	   W_WORD_GO  <=0; 
		ST<=32 ;  
		DELY<=0;  
	 end
	end           
32: begin 
    DELY  <=DELY +1;
    if ( DELY ==3 ) begin 
    W_WORD_GO  <=1;
    ST<=33 ; 
	 end
	 
	end       
33: begin 
    ST<=34 ; 
	end       	
34: begin 
     if  ( W_WORD_END )  begin 	
			 WCNT<=WCNT+1 ;			 
			 ST<=35 ; 
	  end
	end              
35: begin 
    if ( WCNT != WRITE_MAX)  ST<=31 ; 	  
	 else  
		begin 
	         ST<=36; 
	 			WCNT <=0;  
				CNT <=0; 
				DELY  <=0;
				I2C_LO0P <= 0 ;
	   end 
	 end 
36: begin
    I2C_LO0P <= 0 ; 
    if ( DELY ==10  ) begin 
	   ST<=37; 
	 end 	
	 else DELY  <= DELY +1;
	 end 
	 
37: begin 
	   //SENS_DONE <=0 ;
		ST<=1;
	 end  
endcase
end
//-----------------------------MAIN-ST END ------------------------------------------

//============inout  i2c  q15(a10) example ===============  
// wire const_zero_sig /* synthesis keep */;
// assign const_zero_sig = 1\'b0;
// assign TRI_PIN = enable? const_zero_sig : \'bz;
//========================================================
wire   const_zero_sig/* synthesis keep */ ; 
assign I2C_SDA       = (SDAO)?1'bz :const_zero_sig;
assign I2C_SCL       = W_POINTER_SCL  & R_SCL   & W_WORD_SCL;
assign SDAO          = W_POINTER_SDAO & R_SDAO  & W_WORD_SDAO;

assign const_zero_sig = 0 ; 
assign I2C_SDA = (SDAO)?1'bz : const_zero_sig ; 


//==== I2C WRITE WORD ===
I2C_WRITE_BYTE  wrd(
   .RESET_N      ( RESET_N),
	.PT_CK        ( CLK_400K),
	.GO           ( W_WORD_GO),
	.POINTER      ( W_POINTER_REG),
   .WDATA8	     ( W_WORD_DATA),
	.SLAVE_ADDRESS( SLAVE_ADDR ),
	.SDAI         ( I2C_SDA),
	.SDAO         ( W_WORD_SDAO),
	.SCLO         ( W_WORD_SCL ),
	.END_OK       ( W_WORD_END),
	//--for test 
	.ST           ( WORD_ST ),
	.CNT          ( WORD_CNT),
	.BYTE         ( WORD_BYTE)
);

//==== I2C WRITE POINTER ===
I2C_WRITE_POINTER  wpt(
   .RESET_N      (RESET_N),
	.PT_CK        ( CLK_400K),
	.GO           ( W_POINTER_GO),
	.POINTER      ( W_POINTER_REG),
	.SLAVE_ADDRESS( SLAVE_ADDR ),
	.SDAI         ( I2C_SDA),
	.SDAO         ( W_POINTER_SDAO),
	.SCLO         ( W_POINTER_SCL ),
	.END_OK       ( W_POINTER_END)
);

//-----I2C TO READ---- 
I2C_READ_DATA rd( 
   .RESET_N      ( RESET_N),
	.PT_CK        ( CLK_400K),
	.GO           ( R_GO),
	.SLAVE_ADDRESS( SLAVE_ADDR ),
 	.BYTE_NUM     ( 0 ) , // I2C read 8 bit data 
	.SDAI         ( I2C_SDA),
	.SDAO         ( R_SDAO),
	.SCLO         ( R_SCL),
	.END_OK       ( R_END),
	.DATA         ( R_DATA)
);
	
endmodule
	