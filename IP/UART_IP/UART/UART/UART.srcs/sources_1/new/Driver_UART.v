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
    //UARTʱ��
    wire clk_UART;
    wire [30:0]clk_mode;
    //�����Ƶϵ��
    assign clk_mode='d100_000_000/Baud_Rate+1;
    //UARTʱ��
    Clk_Division_0 UART_Clk(
      .clk_100MHz(clk_100MHz),  // input wire clk_100MHz
      .clk_mode(clk_mode),      // input wire [30 : 0] clk_mode
      .clk_out(clk_UART)        // output wire clk_out
    );
    //Rx
    UART_Rx UART_Rx0(
        .clk_UART(clk_UART),//ʱ���ź�
        .nRst(Rst),         //��λ�ź�,�͵�ƽ��λ
        .En(En_Rx),         //ʹ���ź�,�ߵ�ƽ��Ч   
        .Rx(Rx),            //Rx
        .Ack(Rx_ACK),       //�ж��ź�,�Ƿ�������,�����ش���������
        .Data(Rx_Data)      //�����������
    );
    //Tx
    UART_Tx UART_Tx0(
        .clk_100MHz(clk_100MHz),//�������ʱ��
        .clk_UART(clk_UART), //ʱ���ź�
        .Rst(Rst),           //��λ�ź�,�͵�ƽ��λ
        .En(En_Tx),          //ʹ���ź�,��������Ч
        .Data(Tx_Data),      //�����������
        .Ack(Tx_ACK),        //�ж��ź�,�Ƿ������
        .Tx(Tx)              //Tx
    );
endmodule
