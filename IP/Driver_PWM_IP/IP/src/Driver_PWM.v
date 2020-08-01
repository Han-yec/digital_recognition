`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/06 10:05:11
// Design Name: 
// Module Name: Driver_PWM
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

module Driver_PWM(
    input clk_100MHz,
    input [31:0]Freq,
    input [6:0]Duty,
    input Rst,
    input En,
    output reg PWM
    );
    
    //周期
    reg [31:0]Period=0;
    //周期计数
    reg [31:0]Period_Cnt=0;
    //占空比数目
    reg [31:0]Duty_Num=0;
    //计算得到周期
    always @ (*)
        begin
            Period=100000000/Freq;
            if(Duty<100)
                Duty_Num=Duty*Period/100;
            else
                Duty_Num=Period;
        end
    
    //周期分频
    always@(posedge clk_100MHz or negedge Rst)
        begin
            if(!Rst)
                Period_Cnt<=0;
            else
                begin
                    if(Period_Cnt<Period-1)
                        Period_Cnt<=Period_Cnt+1;
                    else
                        Period_Cnt<=0;
                end
        end
    
    //产生PWM
    always @ (posedge clk_100MHz or negedge Rst)
        begin
            if(!Rst)
                PWM<=0;
            else
                begin
                    //如果使能有效,则进行占空比调节
                    if(En)
                        begin
                            if(Period_Cnt<Duty_Num)
                                PWM<=1;
                            else
                                PWM<=0;
                        end
                    else
                        PWM<=0;
                end
        end  
endmodule

