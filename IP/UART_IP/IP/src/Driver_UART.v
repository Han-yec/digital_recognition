`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/29 22:00:27
// Design Name: 
// Module Name: Driver_UART
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


module Driver_UART(
    input clk_100MHz,
    input Rst,
    input En_Rx,
    input En_Tx,
    input [30:0]Baud_Rate,
    input Rx,
    input [7:0]Tx_Data,
    output Tx,
    output [7:0]Rx_Data,
    output Rx_ACK,
    output Tx_ACK
    );
    //UART时钟
    wire clk_UART;
    wire [30:0]clk_mode;
    //计算分频系数
    assign clk_mode='d100_000_000/Baud_Rate+1;
    //UART时钟
    Clk_Division_0 UART_Clk(
      .clk_100MHz(clk_100MHz),  // input wire clk_100MHz
      .clk_mode(clk_mode),      // input wire [30 : 0] clk_mode
      .clk_out(clk_UART)        // output wire clk_out
    );
    //Rx
    UART_Rx UART_Rx0(
        .clk_UART(clk_UART),//时钟信号
        .nRst(Rst),         //复位信号,低电平复位
        .En(En_Rx),         //使能信号,高电平有效   
        .Rx(Rx),            //Rx
        .Ack(Rx_ACK),       //中断信号,是否接收完毕,上升沿代表接收完毕
        .Data(Rx_Data)      //接收数据输出
    );
    //Tx
    UART_Tx UART_Tx0(
        .clk_100MHz(clk_100MHz),//触发检测时钟
        .clk_UART(clk_UART), //时钟信号
        .Rst(Rst),           //复位信号,低电平复位
        .En(En_Tx),          //使能信号,上升沿有效
        .Data(Tx_Data),      //接收数据输出
        .Ack(Tx_ACK),        //中断信号,是否发送完毕
        .Tx(Tx)              //Tx
    );
endmodule
