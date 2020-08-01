`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/29 21:57:38
// Design Name: 
// Module Name: UART_Tx
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


//UART发送模块
module UART_Tx(
    input clk_100MHz,                       //检测时钟,用作触发检测
    input clk_UART,                         //时钟信号
    input Rst,                              //复位信号,低电平复位
    input En,                               //使能信号,上升沿有效
    input[7:0]Data,                         //接收数据输出
    output Ack,                             //中断信号,是否发送完毕
    output reg Tx
);
    //UART状态参数
    parameter SEND_IDLE=0;
    parameter SEND_START=1;
    parameter SEND=2;
    parameter SEND_END=3;
    parameter SEND_WAIT=4;
    //定义状态变量
    reg[2:0]State_Current=0;
    reg[2:0]State_Next=0;
    //定义计数变量,数据是8位
    reg[2:0]Data_Cnt=0;
    //定义发送缓存Buffer
    reg[7:0]Send_Buffer=0;
    //使能信号
    reg[1:0]En_Posedge_Check=0;         //使能信号上升沿检测
    wire Tx_Enable;
    //上升沿检测
    assign Tx_Enable=(~En_Posedge_Check[1])&En_Posedge_Check[0];
    //中断信号
    assign Ack=(State_Current>=SEND_END)?1:0;
    //状态机,组合逻辑
    always@(*)
        begin
            State_Next=State_Current;
            case(State_Current)
                SEND_IDLE:if(Tx_Enable)State_Next=SEND_START;//如果接收完毕,则进入发送状态
                SEND_START:State_Next=SEND;
                SEND:if(Data_Cnt==7)State_Next=SEND_END;     //如果数据传输完毕,则进入结尾状态,无校验位,1位停止位
                SEND_END:State_Next=SEND_WAIT; 
                SEND_WAIT:if(Tx_Enable)State_Next=SEND_START;//发送结束回到等待状态
                default:State_Next=SEND_IDLE;
            endcase
        end
    //使能信号上升沿检测
    always@(posedge clk_100MHz or negedge Rst)
        begin
            //低电平复位
            if(!Rst)
                En_Posedge_Check<=0;
            else
                En_Posedge_Check<={En_Posedge_Check[0],En};
        end
    //状态转换
    always@(posedge clk_UART or negedge Rst)
        begin
            //低电平复位
            if(!Rst)
                State_Current<=SEND_IDLE;
            else
                State_Current<=State_Next;
        end
    //数据发送计数
    always@(posedge clk_UART or negedge Rst)
        begin
            //低电平复位
            if(!Rst)
                Data_Cnt<=0;
            else if(State_Current==SEND)          
                Data_Cnt<=Data_Cnt+1;
            else if(State_Current==SEND_END|State_Current==SEND_IDLE)
                Data_Cnt<=0;      
        end
    //数据发送缓存
    always@(posedge clk_UART or negedge Rst)
        begin
            //低电平复位
            if(!Rst)
                Send_Buffer<=0;
            else if(State_Current==SEND_START)
                Send_Buffer<=Data;
            else if(State_Current==SEND)  
                Send_Buffer[6:0]<=Send_Buffer[7:1];
        end
    //数据发送
    always@(posedge clk_UART or negedge Rst)
        begin
            //低电平复位
            if(!Rst)
                Tx<=1;
            else if(State_Current==SEND_START)
                Tx<=0;
            else if(State_Current==SEND)
                Tx<=Send_Buffer[0];
            else if(State_Current==SEND_END||State_Current==SEND_IDLE)
                Tx<=1;                
        end
endmodule
