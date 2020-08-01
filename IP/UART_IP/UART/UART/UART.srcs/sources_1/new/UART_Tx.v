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


//UART����ģ��
module UART_Tx(
    input clk_100MHz,                       //���ʱ��,�����������
    input clk_UART,                         //ʱ���ź�
    input Rst,                              //��λ�ź�,�͵�ƽ��λ
    input En,                               //ʹ���ź�,��������Ч
    input[7:0]Data,                         //�����������
    output Ack,                             //�ж��ź�,�Ƿ������
    output reg Tx
);
    //UART״̬����
    parameter SEND_IDLE=0;
    parameter SEND_START=1;
    parameter SEND=2;
    parameter SEND_END=3;
    parameter SEND_WAIT=4;
    //����״̬����
    reg[2:0]State_Current=0;
    reg[2:0]State_Next=0;
    //�����������,������8λ
    reg[2:0]Data_Cnt=0;
    //���巢�ͻ���Buffer
    reg[7:0]Send_Buffer=0;
    //ʹ���ź�
    reg[1:0]En_Posedge_Check=0;         //ʹ���ź������ؼ��
    wire Tx_Enable;
    //�����ؼ��
    assign Tx_Enable=(~En_Posedge_Check[1])&En_Posedge_Check[0];
    //�ж��ź�
    assign Ack=(State_Current>=SEND_END)?1:0;
    //״̬��,����߼�
    always@(*)
        begin
            State_Next=State_Current;
            case(State_Current)
                SEND_IDLE:if(Tx_Enable)State_Next=SEND_START;//����������,����뷢��״̬
                SEND_START:State_Next=SEND;
                SEND:if(Data_Cnt==7)State_Next=SEND_END;     //������ݴ������,������β״̬,��У��λ,1λֹͣλ
                SEND_END:State_Next=SEND_WAIT; 
                SEND_WAIT:if(Tx_Enable)State_Next=SEND_START;//���ͽ����ص��ȴ�״̬
                default:State_Next=SEND_IDLE;
            endcase
        end
    //ʹ���ź������ؼ��
    always@(posedge clk_100MHz or negedge Rst)
        begin
            //�͵�ƽ��λ
            if(!Rst)
                En_Posedge_Check<=0;
            else
                En_Posedge_Check<={En_Posedge_Check[0],En};
        end
    //״̬ת��
    always@(posedge clk_UART or negedge Rst)
        begin
            //�͵�ƽ��λ
            if(!Rst)
                State_Current<=SEND_IDLE;
            else
                State_Current<=State_Next;
        end
    //���ݷ��ͼ���
    always@(posedge clk_UART or negedge Rst)
        begin
            //�͵�ƽ��λ
            if(!Rst)
                Data_Cnt<=0;
            else if(State_Current==SEND)          
                Data_Cnt<=Data_Cnt+1;
            else if(State_Current==SEND_END|State_Current==SEND_IDLE)
                Data_Cnt<=0;      
        end
    //���ݷ��ͻ���
    always@(posedge clk_UART or negedge Rst)
        begin
            //�͵�ƽ��λ
            if(!Rst)
                Send_Buffer<=0;
            else if(State_Current==SEND_START)
                Send_Buffer<=Data;
            else if(State_Current==SEND)  
                Send_Buffer[6:0]<=Send_Buffer[7:1];
        end
    //���ݷ���
    always@(posedge clk_UART or negedge Rst)
        begin
            //�͵�ƽ��λ
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
