`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/29 21:57:51
// Design Name: 
// Module Name: UART_Rx
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


//UART接收模块
module UART_Rx(
    input clk_UART,                         //时钟信号
    input nRst,                             //复位信号,低电平复位
    input En,                               //使能信号,高电平有效
    input Rx,                               //Rx
    output Ack,                             //中断信号,是否接收完毕
    output reg[7:0]Data                    //接收数据输出
);
    //UART状态参数
    parameter RECEIVE_IDLE=2'd0;
    parameter RECEIVE=2'd1;
    parameter RECEIVE_END=2'd2;
    //定义状态变量
    reg[1:0]State_Current=0;
    reg[1:0]State_Next=0;
    //定义计数变量,数据是8位
    reg[2:0]Data_Cnt=0;
    //复位信号
    wire Rst;
    //复位信号连接
    assign Rst=nRst&En;
    //中断信号,上升沿接收完毕
    assign Ack=(State_Current==RECEIVE_END);
    //状态机,组合逻辑
    always@(*)
        begin
            case(State_Current)
                RECEIVE_IDLE:if(!Rx)State_Next=RECEIVE;             //如果Rx拉低,则进入接收状态
                RECEIVE:if(Data_Cnt==3'd7)State_Next=RECEIVE_END;   //如果数据传输完毕,则进入结尾状态,无校验位,1位停止位
                RECEIVE_END:State_Next=RECEIVE_IDLE;
                default:State_Next=RECEIVE_IDLE;
            endcase
        end
    //状态转换
    always@(posedge clk_UART or negedge Rst)
        begin
            //低电平复位
            if(!Rst)
                State_Current<=RECEIVE_IDLE;
            else
                State_Current<=State_Next;
        end
    //数据读取计数
    always@(posedge clk_UART or negedge Rst)
        begin
            //低电平复位
            if(!Rst)
                Data_Cnt<=3'd0;
            else if(State_Current==RECEIVE)          
                Data_Cnt<=Data_Cnt+1;
            else
                Data_Cnt<=3'd0;      
        end
    //数据读取,从高位开始
    always@(posedge clk_UART or negedge Rst)
        begin
            //低电平复位
            if(!Rst)
                Data<=0;
            else if(State_Current==RECEIVE)
                Data<={Rx,Data[7:1]};
        end
endmodule
