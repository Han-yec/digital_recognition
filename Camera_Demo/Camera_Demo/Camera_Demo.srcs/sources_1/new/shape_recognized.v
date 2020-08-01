`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/26 16:58:27
// Design Name: 
// Module Name: shape_recognized
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


module shape_recognition(               
    input clk,
    input data_in,
    input [11:0] hdata,
    input [10:0] vdata,          
    output reg [3:0] shape//              
    );
wire [3:0]shap;
reg [3:0]shap1;
reg [10:0] addhang1, addhang2, addhang3; //行点数
reg concrast12, concrast23;             //行大小
reg [10:0] subtract12, subtract23;      //行差值
reg [10:0] count;  //计数
wire sanjiao, yuan, fang,ling;

parameter HANG293 = 305, HANG360 = 359, HANG426 = 415, HANG550 = 549, HANG740 = 739, TURE = 1, SMALL1 =20, SMALL2 = 10, MIDDLES = 50, MIDDLEY = 55, BIG = 160;

always@(posedge clk)//检测第293行；vdata == 293。
    begin
        if((vdata == HANG293)&&(hdata==500)) addhang1 <= 11'd0; 
        else  if((vdata == HANG293)&&(hdata>525)&&(hdata<755)) addhang1 <= addhang1 + !data_in;  
        else  addhang1 <= addhang1;
    end

always@(posedge clk)//检测第360行；vdata == 359。
    begin
       if((vdata == HANG360)&&(hdata==500)) addhang2 <= 11'd0;  
       else  if((vdata == HANG360)&&(hdata>525)&&(hdata<755)) addhang2 <= addhang2 + !data_in;   
       else  addhang2 <= addhang2;
    end

always@(posedge clk)//检测第426行；vdata == 426。
    begin 
       if((vdata == HANG426)&&(hdata==500)) addhang3 <= 11'd0;
       else if((vdata == HANG426)&&(hdata>525)&&(hdata<755))   addhang3 <= addhang3 + !data_in;
       else  addhang3 <= addhang3;
    end   


always@(posedge clk)//293行与360行长度大小判断
     begin
        if(addhang1 > addhang2) concrast12 <= 1;
        else concrast12 <= 0;
     end   


always@(posedge clk)//360行与426行长度大小判断
     begin
        if(addhang2 > addhang3) concrast23 <= 1;
        else    concrast23 <= 0;
     end    

always@(posedge clk)//293行与360行数值差
      begin
         if(concrast12)   subtract12 <= addhang1 - addhang2;
         else    subtract12 <= addhang2 - addhang1;
      end

always@(posedge clk)//360行与426行数值差
      begin
          if(concrast23) subtract23 <= addhang2 - addhang3;
         else   subtract23 <= addhang3 - addhang2;
      end

assign sanjiao = ((MIDDLES < subtract12)&& (subtract12< BIG) && (MIDDLES < subtract23 )&&(subtract12< BIG)&& (!concrast12) && (!concrast23)) ? TURE : !TURE;//1  :  0   
assign yuan =  ((SMALL2 < subtract12)&& (subtract12< MIDDLES) && (SMALL2 < subtract23)&& (subtract23< MIDDLES) && (!concrast12) && (concrast23)) ? TURE : !TURE;//1  :  0   
assign fang =  ((subtract12<SMALL1) && ( subtract23<SMALL1 )&&(addhang2> MIDDLEY)) ? TURE : !TURE;//1  :  0   
assign ling = ((MIDDLES < subtract12)&& (subtract12< BIG) && (MIDDLES < subtract23 )&&(subtract12< BIG)&& (!concrast12) && (concrast23)) ? TURE : !TURE;//1  :  0   

assign shap[0] = sanjiao;
assign shap[1] = yuan;
assign shap[2] = fang;
assign shap[3] = ling;

 always@(posedge clk)            //形状稳定输出
begin
    if ((vdata==500)&& (hdata==50))
      begin
           if(shap1== shap) 
                count<=count+1'b1;
           else count<=11'h0;
           
           if((count>40)&&(shap== shap1))
                shape<=shap1;
           else
                shap1<=shap;
      end
  else 
          shap1<=shap1;
      
end

endmodule
