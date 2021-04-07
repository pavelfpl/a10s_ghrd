module TEMP_FAN_LOOP ( 
  input        OSC_50,
  input        RESET_N  , 
  output       I2C_SCL,
  inout        I2C_SDA , 
  output       TEMP_BUSY ,     // Sensor transform ok! 
  input        FAN_ALERT_n,
  input        MANU_AUTO_SW,
  input   [7:0]FPGA_T_ISM ,   // Temperature from QUARTUS in system memory 
  output       TEMP_HI ,
  output       TEMP_OK ,
  output       TEMP_LO ,
  output  [7:0]FPGA_TEMP_C ,  // FPGA TEMPERATURE degree C 
  output  [7:0]BOARD_TEMP_C,  // BOARD TEMPERATURE degree C 
  output  [7:0]ALARM_STATUS, 
  output       BUSY ,         // TEMPERATURE IC,GO HI ,DATA is SAFE (READY )
  output       BUSY_GO_HI ,   // TEMPERATURE IC,EDGE
  output [7:0] FAN_DAC ,      // FAN DAC 
  output [15:0]FAN_RPM ,      // FAN RPM
  output       TEMP_UP_FLAG ,
  output       FAN_INI ,
  output  [7:0]DAC_6000 ,
  output  [7:0]DAC_5500 ,
  output  [7:0]DAC_5000 ,
  output  [7:0]DAC_4500 , 
  output  [7:0]DAC_4000 , 
  output  [7:0]DAC_3500 , 
  output  [7:0]DAC_3000 
//---
);

//=======================================================
//  WIRE /REGISETER 
//=======================================================
  wire [7:0]  BAORD_T;       // LOCAL (BAORD)temperature
  wire [7:0]  FPGA_T ;       // REMOTE(FPGA) temperature
  wire [7:0]  STATUS_T ;     // Temperature STATUS 
  wire  	     CLK_400K ; 	  // 400KHZ ( I2C )
  wire [7:0]  FPGA_T_IC;     // Temperature from IC 
//=======================================================
//  Structural coding
//======================================================= 

//--FAN((MAX6650) & TEMP ( TMP441) I2C Controller  --- 
FAN_TEMP_I2C i2c1( 
   .RESET_N     ( RESET_N  ) ,
   .CLK_50      ( OSC_50 ),
   .I2C_SCL     ( I2C_SCL), 
   .I2C_SDA     ( I2C_SDA),
  // .INT_n       ( FAN_ALERT_n),
	.CLK_400K    ( CLK_400K  ) ,
	.I2C_LO0P    ( ) ,
	.TEMP_BUSY   ( TEMP_BUSY ) , 
	//--FAN 
   .CONFIG      ( 8'h2A ),	     // --FAN IC, to See Datasheet Page10 --
	                             //   Open-loop operation               
   .GPIO_DEF    ( 8'hF5),       // --FAN IC , To See Datasheet Page11
	                             //   GPIO1 serves as a FULL ON input.
	                             //   GPIO0 serves as an ALERT output 
   .ALARM_ENABLE( 8'h0F) ,	     // --FAN IC ,to see Datasheet Page12  
	                             //   GPIO1 Alarm Enable
	                             //   Minimum Output Level Alarm Enabl
	                             //   Maximum Output Level Alarm Enabl
    	                          //   Tachometer Overflow Alarm Enable
   .TACHOMETER  (8'h02) , 										  
   .SPEED_RPM   ( SPEED_RPM ) ,										  
	.DAC         ( FAN_DAC  ),
	.ALARM       ( ALARM_STATUS ) ,
   .TACH0       ( ),
	.FAN_RPM     ( FAN_RPM) , 
	//-----TEMPERATURE  
	.LOCT1_H     ( BAORD_T    ),  // LOCAL (BAORD) temperature
	.REMT1_H     ( FPGA_T_IC  ),  // REMOTE(FPGA) temperature
	.STATUS      ( STATUS_T   ) , // Temperature STATUS 
	.RD_TR       (),
	.BUSY_GO_HI   ( BUSY_GO_HI )
);


wire [12:0] SPEED_RPM ; 
//assign SPEED_RPM = SW? 3000:6000 ; 



//--------TEMP_SEL (Temperature Value Selection) ------	
assign    FPGA_T = ( MANU_AUTO_SW) ? FPGA_T_ISM : FPGA_T_IC;

//--------Fan Speed adj by temperature -----
FAN_ONOFF OL( 
  .RESET_N     ( RESET_N ), 
  .CLK_400K    ( CLK_400K  ), 
  //.TEMP_BUSY ( TEMP_BUSY ),
  .FPGA_T      ( FPGA_T  ) ,
  .BAORD_T     ( BAORD_T ) ,
  
  .FAN_RPM     ( FAN_RPM ) ,  
  .FPGA_TEMP_C ( FPGA_TEMP_C ), //FPGA temperature C degreee
  .BOARD_TEMP_C( BOARD_TEMP_C), //BOARD TEMPERATURE degree C  
 
  .TEMP_UP_FLAG( TEMP_UP_FLAG),
  .FAN_INI     ( FAN_INI    ),
  
  .SPEED_RPM    ( SPEED_RPM),
  .BUSY_GO_HI   ( BUSY_GO_HI ),
  .TEMP_HI      ( TEMP_HI),      //FPGA temperature is HIGH!
  .TEMP_OK      ( TEMP_OK),      //FPGA temperature is OK!
  .TEMP_LO      ( TEMP_LO)       //FPGA temperature is LOW!
); 
	
endmodule 	