module FAN_TEMP_CORE  (
 input  			OSC_50 ,
 input  			BUTTON_N ,
 input  			MANU_AUTO_SW , 
 output 			TPS40422_CLK   , 
 inout  			TPS40422_DATA  , 
 input  			TPS40422_ALERT  , 
 output [15:0] VOUT_S_0,
 output [15:0] IOUT_S_0,
 output [15:0] VOUT_S_1,
 output [15:0] IOUT_S_1,  

 output        FPGA_I2C_SCL,
 inout         FPGA_I2C_SDA,

 output 			TEMP_HI,
 output 			TEMP_OK,
 output 			TEMP_LO,
 output [7:0]  FPGA_TEMP_C ,
 output [7:0]  BOARD_TEMP_C , 
 output [7:0]  ALARM_STATUS ,
 output [7:0]  FAN_DAC ,
 output [15:0] FAN_RPM,
 
 output  [7:0] DAC_5000 ,
 output  [7:0] DAC_4500 , 
 output  [7:0] DAC_4000 , 
 output  [7:0] DAC_3500 , 
 output  [7:0] DAC_3000  
) ;   

//=======================================================
//  REG/WIRE declarations
//=======================================================
wire   		RESET_N ; 
wire 			BUSY_GO_HI;
wire        BUSY ; 
wire [7:0]  FPGA_T_ISM; 

//=======================================================
//  Structural coding
//=======================================================

//-------- RESET DELAY --------
RESET_DELY res( 
   .BUTTON_N   (BUTTON_N)  , 
	.OSC_50     (OSC_50  ) , 
   .RESET_N_DY (RESET_N )  
) ; 

//--  TPS40422 Controller . to measurement FPGA Core V/I -----
 CORE_I2C i2c1( 
   .RESET_N  ( RESET_N       ) ,
   .CLK_50   ( OSC_50        ),
   .I2C_SCL  ( TPS40422_CLK  ), 
   .I2C_SDA  ( TPS40422_DATA ),
   .INT_n    ( TPS40422_ALERT),		
//READ Channel_0
	.VOUT_0   ( ),
	.IOUT_0   ( ), 
	.VOUT_S_0 ( VOUT_S_0  ),// CH0_V x0.01V  
	.IOUT_S_0 ( IOUT_S_0  ),// CH0_I x1mA		
//READ Channel_1 
	.VOUT_1   ( ),       	
	.IOUT_1   ( ),       
	.VOUT_S_1 ( VOUT_S_1),  // CH1_V x0.01V
	.IOUT_S_1 ( IOUT_S_1)   // CH1_I x1mA	
);

//-Temperature from QUARTUS in system memory ---
SIM_T  tr ( .result ( FPGA_T_ISM) );

//-------- FAN_IP EXAMPLE ---
TEMP_FAN_LOOP  lp( 
 .OSC_50       ( OSC_50 ),            // 50MHZ CLOCK 
 .RESET_N      ( RESET_N) ,           // RESET    
 .I2C_SCL      ( FPGA_I2C_SCL),       // I2C SCLK ( FAN & TEMPERATURE IC )
 .I2C_SDA      ( FPGA_I2C_SDA),       // I2C SDA  ( FAN & TEMPERATURE IC )
											 
 .MANU_AUTO_SW ( MANU_AUTO_SW),       // 1:Test,0:Auto by Temperature 
 .FPGA_T_ISM   ( FPGA_T_ISM) ,  
 .FAN_ALERT_n  ( FAN_ALERT_n),        // FAN ALARM PIN 
 .ALARM_STATUS ( ALARM_STATUS) ,      // FAN ALARM STATUS 
 .FAN_DAC      ( FAN_DAC) ,           // FAN DAC 
 .FAN_RPM      ( FAN_RPM) ,           // FAN RPM 
 .BUSY         ( BUSY   ),            // GO HI , DATA is SAFE (READY ) 
 .TEMP_HI      ( TEMP_HI) ,           // "1" FPGA TEMPERATURE IS HIGH >37 degree C
 .TEMP_OK      ( TEMP_OK) ,           // "1" FPGA TEMPERATURE IS SAFE 32~37 degree C 
 .TEMP_LO      ( TEMP_LO) ,           // "1" FPGA TEMPERATURE IS LOW < 32 degree C 
 .FPGA_TEMP_C  ( FPGA_TEMP_C ) ,      // FPGA TEMPERATURE degree C 
 .BOARD_TEMP_C ( BOARD_TEMP_C) ,      // BOARD TEMPERATURE degree C 
 //--test--
 .BUSY_GO_HI   ( BUSY_GO_HI ),           
 .DAC_5000     ( DAC_5000   ),
 .DAC_4500     ( DAC_4500   ), 
 .DAC_4000     ( DAC_4000   ), 
 .DAC_3500     ( DAC_3500   ), 
 .DAC_3000     ( DAC_3000   )
);
//-------- FAN_IP EXAMPLE END --------

endmodule 