`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/28 09:16:19
// Design Name: 
// Module Name: state
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module state(
input clk,                                  
input [1:0]Key,   
output reg LED1,
output reg LED2,                                         
output reg[2:0]State
);
reg[3:0]State_Next=0;
reg[3:0]State_Current=0;
wire Rst=Key[0]|Key[1];

wire All_Key=Key[0]&&Key[1];
reg  All_Key1;
reg [4:0]cent;
parameter s0 = 4'b0000;
parameter s1 = 4'b0001;
parameter s2 = 4'b0010;
parameter s3 = 4'b0100;
parameter s4 = 4'b1000;
parameter s5 = 4'b1111;
always @ (posedge clk )
 begin
     if (!All_Key)
         cent=cent+1;
     else
        cent=0;
     if (cent>5)
                All_Key1=0;
       else
              All_Key1=1;
        
 end
always @ (posedge clk or negedge Rst)
begin
    if (!Rst)
        State_Current <= s0;
    else
        State_Current <= State_Next;
end

always @ (negedge All_Key1)
begin
    if (!Rst)
        State_Next=s0;
    else
      case (State_Current)
            s0:    State_Next = (!Key[0])?s1:s2;
            s1:    State_Next = (!Key[0])?s3:s0;
            s2:    State_Next = (!Key[0])?s4:s0;
            s3:    State_Next = (!Key[0])?s3:s1;
            s4:    State_Next = (!Key[0])?s4:s2;
    
            default:    State_Next = 4'bXXXX;
      endcase
end

always @ (Rst or State_Current)
begin
    if(!Rst)
   begin
    LED1 <=0 ;
    LED2 <=0 ;
    end
    else
        case(State_Current)
            s0:    
            begin
            LED1 <=1 ;
            LED2 <=1 ;
            State=3'b000;
            end
            
            s1:   
            begin
            LED1 <=0 ;
            LED2 <=1 ;
            State=3'b001;
            end            
            s2:   
            begin
            LED1 <=1 ;
            LED2 <=0 ;
            State=3'b010;
            end            
            s3:
            begin
            LED1 <=0 ;
            LED2 <=0 ;
            State=3'b011;
            end           
            s4:
            begin
            LED1 <=0 ;
            LED2 <=0 ;
            State=3'b100;
            end           

            default:  
            begin
            LED1 <=0 ;
            LED2 <=0 ;
            State=3'b000;
            end            
        endcase
end     
endmodule
