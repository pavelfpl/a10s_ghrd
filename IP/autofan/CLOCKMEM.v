module CLOCKMEM ( 
input                CLK ,
input [31:0]         CLK_FREQ ,
output reg  			CK_1HZ,
output               CK_OUT     
) ;
//=======================================================
//  REG/WIRE declarations
//=======================================================
reg [31:0] CLK_DELAY  ;   
//=======================================================
//  Structural coding
//=======================================================
assign CK_OUT  = CK_1HZ ; 

always @(posedge CLK )  
begin
	if (CLK_DELAY> CLK_FREQ/2) 
	begin 
		CLK_DELAY<=0;  
		CK_1HZ <=~CK_1HZ ;
	end
	else   
		CLK_DELAY <=CLK_DELAY+1;
end		
	
endmodule 
	
	