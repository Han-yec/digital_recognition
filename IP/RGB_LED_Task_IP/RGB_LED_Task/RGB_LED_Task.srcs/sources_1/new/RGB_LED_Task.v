`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/04 19:05:32
// Design Name: 
// Module Name: RGB_LED_Task
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
`define PWM_Dir_Up      0
`define PWM_Dir_Down    1

//RGB呼吸灯任务,可通过堆栈取任务调用,也可以直接调用
module RGB_LED_Task(
   input clk_100MHz,
   input clk_10MHz,
   input [5:0]Period_100mSecond,
   input [7:0]R_In,
   input [7:0]G_In,
   input [7:0]B_In,
   input [10:0]Light_Num,
   input Rst,
   output RGB_LED_IO,
   output reg Light_Ok
   );
   //PWM占空比计数最大值,最小值
   parameter PWM_PERCENT_Max=400;
   parameter PWM_PERCENT_Min=0;
   //最小分辨率0.01us为单位
   parameter Delta_Min=10;
   //输出
   reg [7:0]R_Out=0;
   reg [7:0]G_Out=0;
   reg [7:0]B_Out=0;
   
   //分频系数
   reg [30:0]Clk_Divide_1=0;
   reg [30:0]Clk_Divide_2=0;
   
   //调制计数
   reg [10:0]Cnt_1=0;
   reg [10:0]Cnt_2=0;
   reg [10:0]Cnt_3=0;
   
   //RGB呼吸灯亮暗状态
   reg RGB_State=0;
   
   //RGB闪烁计数
   reg [10:0]Light_Cnt=0;
   
   //RGB呼吸灯调制时钟
   wire Clk_1;
   wire Clk_2;
   //实例化SK6805驱动
   Driver_SK6805_0 Driver_SK68050(.R_In1(R_Out),.G_In1(G_Out),.B_In1(B_Out),.R_In2(R_Out),.G_In2(G_Out),.B_In2(B_Out),.clk_10MHz(clk_10MHz),.Rst(Rst),.LED_IO(RGB_LED_IO));
   
   //实例化产生调制时钟
   Clk_Division_0 Clk_Division0(.clk_100MHz(clk_100MHz),.clk_mode(Clk_Divide_1),.clk_out(Clk_1));
   Clk_Division_0 Clk_Division1(.clk_100MHz(clk_100MHz),.clk_mode(Clk_Divide_2),.clk_out(Clk_2));
   //计算分频系数
   always@(posedge clk_100MHz)
        begin
            Clk_Divide_1=5*Period_100mSecond*Delta_Min;
            Clk_Divide_2<=Clk_Divide_1*PWM_PERCENT_Max;
        end
   
   //第一级调制计数
   always@(posedge Clk_1 or negedge Rst)
        begin
            if(!Rst)
                begin
                    Cnt_1<=0;
                end
            else
                begin
                    if(Cnt_1<PWM_PERCENT_Max-1)
                        Cnt_1<=Cnt_1+1;
                    else
                        Cnt_1<=0;
                end
        end
   //第二级调制计数
   always@(negedge Clk_2 or negedge Rst)
        begin
            if(!Rst)
                begin
                    Cnt_2<=0;
                end
            else
                begin
                    if(Cnt_2<=PWM_PERCENT_Max-1)
                        Cnt_2<=Cnt_2+1;
                    else
                        Cnt_2<=0;
                end
        end
    //第三级调制,每个周期切换一次亮暗状态
    always@(negedge Clk_2 or negedge Rst)
        begin
            if(!Rst)
                begin
                    RGB_State<=0;
                    Cnt_3<=0;
                    Light_Cnt<=0;
                    Light_Ok<=0;
                end
            else
                begin
                    if(Cnt_3==PWM_PERCENT_Max)
                        begin
                            Cnt_3<=0;
                            RGB_State<=~RGB_State;
                            
                            //翻转计数
                            if(Light_Cnt==Light_Num)
                                begin
                                     Light_Cnt<=0;
                                     Light_Ok<=1;
                                end
                            else
                                begin
                                    Light_Ok<=0;
                                    if(RGB_State==`PWM_Dir_Down)
                                        Light_Cnt<=Light_Cnt+1;
                                end
                               
                        end
                    else
                        Cnt_3<=Cnt_3+1;
                end
        end
    //第四级调制,输出PWM给RGB
    always@(posedge clk_100MHz or negedge Rst)
        begin
            if(!Rst)
                begin
                    R_Out<=0;
                    G_Out<=0;
                    B_Out<=0;
                end
            else
                begin
                    //如果灯变亮
                    if(RGB_State==`PWM_Dir_Up)
                        begin
                            //如果第一级计数小于第二级计数,则为高电平,即正常输出;反之为低电平,0值输出
                            if(Cnt_1<Cnt_2)
                                begin
                                    R_Out<=R_In;
                                    G_Out<=G_In;
                                    B_Out<=B_In;
                                end
                            else
                                begin
                                    R_Out<=0;
                                    G_Out<=0;
                                    B_Out<=0;
                                end    
                        end
                    //如果灯变暗
                    else if(RGB_State==`PWM_Dir_Down)
                        begin
                            //如果第一级计数小于第二级计数,则为低电平,即0值输出;反之为高电平,正常输出
                            if(Cnt_1<Cnt_2)
                                begin
                                    R_Out<=0;
                                    G_Out<=0;
                                    B_Out<=0;
                                end
                            else
                                begin
                                    R_Out<=R_In;
                                    G_Out<=G_In;
                                    B_Out<=B_In;
                                end    
                        end
                end
        end
endmodule
