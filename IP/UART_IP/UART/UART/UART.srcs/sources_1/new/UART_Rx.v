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


//UART����ģ��
module UART_Rx(
    input clk_UART,                         //ʱ���ź�
    input nRst,                             //��λ�ź�,�͵�ƽ��λ
    input En,                               //ʹ���ź�,�ߵ�ƽ��Ч
    input Rx,                               //Rx
    output Ack,                             //�ж��ź�,�Ƿ�������
    output reg[7:0]Data                    //�����������
);
    //UART״̬����
    parameter RECEIVE_IDLE=2'd0;
    parameter RECEIVE=2'd1;
    parameter RECEIVE_END=2'd2;
    //����״̬����
    reg[1:0]State_Current=0;
    reg[1:0]State_Next=0;
    //�����������,������8λ
    reg[2:0]Data_Cnt=0;
    //��λ�ź�
    wire Rst;
    //��λ�ź�����
    assign Rst=nRst&En;
    //�ж��ź�,�����ؽ������
    assign Ack=(State_Current==RECEIVE_END);
    //״̬��,����߼�
    always@(*)
        begin
            case(State_Current)
                RECEIVE_IDLE:if(!Rx)State_Next=RECEIVE;             //���Rx����,��������״̬
                RECEIVE:if(Data_Cnt==3'd7)State_Next=RECEIVE_END;   //������ݴ������,������β״̬,��У��λ,1λֹͣλ
                RECEIVE_END:State_Next=RECEIVE_IDLE;
                default:State_Next=RECEIVE_IDLE;
            endcase
        end
    //״̬ת��
    always@(posedge clk_UART or negedge Rst)
        begin
            //�͵�ƽ��λ
            if(!Rst)
                State_Current<=RECEIVE_IDLE;
            else
                State_Current<=State_Next;
        end
    //���ݶ�ȡ����
    always@(posedge clk_UART or negedge Rst)
        begin
            //�͵�ƽ��λ
            if(!Rst)
                Data_Cnt<=3'd0;
            else if(State_Current==RECEIVE)          
                Data_Cnt<=Data_Cnt+1;
            else
                Data_Cnt<=3'd0;      
        end
    //���ݶ�ȡ,�Ӹ�λ��ʼ
    always@(posedge clk_UART or negedge Rst)
        begin
            //�͵�ƽ��λ
            if(!Rst)
                Data<=0;
            else if(State_Current==RECEIVE)
                Data<={Rx,Data[7:1]};
        end
endmodule
