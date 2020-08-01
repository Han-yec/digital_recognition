`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/06 10:20:35
// Design Name: 
// Module Name: Camera_Demo
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

module Camera_Demo(
    input clk_100MHz,
    input Clk_Rx_Data_N,
    input Clk_Rx_Data_P,
    input [1:0]Rx_Data_N,
    input [1:0]Rx_Data_P,
    input Data_N,
    input Data_P,
    input [1:0]key,
    inout Camera_IIC_SDA,
    output Camera_IIC_SCL,
    output Camera_GPIO,
    output TMDS_Tx_Clk_N,
    output TMDS_Tx_Clk_P,
    output [2:0]TMDS_Tx_Data_N,
    output [2:0]TMDS_Tx_Data_P,
    output [1:0]LED_tri_o
    );
    //时钟
    wire clk_100MHz_system;
    wire clk_200MHz;
    wire clk_50MHz;
    wire clk_10MHz;
    wire clk_100MHz_out;
    wire clk_Serial_out;
    wire locked;
    reg Reset_Clk=1;
    reg NRest=0;
    //MIPI摄像头OV5647
    wire [23:0]RGB_Data;
    wire RGB_HSync;
    wire RGB_VSync;
    wire RGB_VDE;
    //IIC数据
    wire IIC_Rst;
    wire [7:0]Address;         //IIC通讯从机设备地址
    wire [7:0]Data;            //IIC写数据
    wire [15:0]Reg_Addr;       //寄存器地址
    wire [7:0]IIC_Read_Data;
    wire IIC_Busy;     
    wire Reg2Addr;
    wire IIC_Write;
    reg IIC_Read=0;
    wire Camera_IIC_SDA_I;
    wire Camera_IIC_SDA_O;
    wire Camera_IIC_SDA_T;
    
    wire [10:0]hdata;//坐标
    wire [9:0]vdata;
    wire gray_data;//灰度值
    wire [23:0]RGB_Data0;//输出图像
    wire [3:0]shape;//形状
    wire [3:0]digital;//数字
    wire [23:0]HSV_data;//HSV值
    wire [23:0]HSVt   ;//HSV均值
    wire [23:0]RGBt   ;//RGB均值
     wire [3:0] colour;//颜色
    wire [2:0]state_now;//状态
    reg [30:0]clk_mode=10000000;//状态分频
    wire clk_key;//按键时钟
    wire [1:0]LED_tri;
    //状态分频
   clkdivi Clk_Div(.i_clk(clk_100MHz),. i_rst(1),.i_clk_mode(clk_mode),.o_clk_out(clk_key));
    clk_wiz_0 clk_10(.clk_out1(clk_100MHz_system),.clk_out2(clk_200MHz),.clk_out3(clk_50MHz),.clk_out4(clk_10MHz),.clk_in1(clk_100MHz));
    //三态门
    IOBUF Camera_IIC_SDA_IOBUF
           (.I(Camera_IIC_SDA_O),
            .IO(Camera_IIC_SDA),
            .O(Camera_IIC_SDA_I),
            .T(~Camera_IIC_SDA_T));
    //摄像头驱动
    Driver_MIPI Driver_MIPI0(
        .clk_200MHz(clk_200MHz),
        .Clk_Rx_Data_N(Clk_Rx_Data_N),
        .Clk_Rx_Data_P(Clk_Rx_Data_P),
        .Rx_Data_N(Rx_Data_N),
        .Rx_Data_P(Rx_Data_P),
        .Data_N(Data_N),
        .Data_P(Data_P),
        .Camera_GPIO(Camera_GPIO),
        .RGB_Data(RGB_Data),
        .RGB_HSync(RGB_HSync),
        .RGB_VSync(RGB_VSync),
        .RGB_VDE(RGB_VDE),
        .clk_100MHz_out(clk_100MHz_out),
        .clk_Serial_out(clk_Serial_out),
        .LED(LED_tri),
        .hdata(hdata),
        .vdata(vdata)
    );
    //HDMI驱动
    Driver_HDMI Driver_HDMI0(
        .clk_Serial_out(clk_Serial_out),
        .clk_100MHz(clk_100MHz_out),
        .RGB_Data(RGB_Data0),
        .RGB_HSync(RGB_HSync),
        .RGB_VSync(RGB_VSync),
        .RGB_VDE(RGB_VDE),
        .Rst(Reset_Clk),
        .TMDS_Tx_Clk_N(TMDS_Tx_Clk_N),
        .TMDS_Tx_Clk_P(TMDS_Tx_Clk_P),
        .TMDS_Tx_Data_N(TMDS_Tx_Data_N),
        .TMDS_Tx_Data_P(TMDS_Tx_Data_P)
    );
    //IIC驱动
    Driver_IIC Driver_IIC0(
        .clk(clk_100MHz_system),
        .Rst(IIC_Rst),
        // 与控制器通信信号
        .Addr(Address),
        .Reg_Addr(Reg_Addr),
        .Data(Data),
        .IIC_Write(IIC_Write),
        .IIC_Read(IIC_Read),
        .IIC_Read_Data(IIC_Read_Data),
        .IIC_Busy(IIC_Busy),
        .Reg_2Addr(Reg2Addr),
        // 外部信号
        .IIC_SCL(Camera_IIC_SCL),
        .IIC_SDA_In(Camera_IIC_SDA_I),
        .SDA_Dir(Camera_IIC_SDA_T),// 控制数据方向,高电平为数据输出
        .SDA_Out(Camera_IIC_SDA_O)// 输出数据
    );
    //OV5647摄像头初始化
    Diver_OV5647 Diver_OV5647_Init(
        .clk_10MHz(clk_10MHz),
        .IIC_Busy(IIC_Busy),
        .Addr(Address),
        .Reg_Addr(Reg_Addr),
        .Reg_Data(Data),
        .IIC_Write(IIC_Write),
        .Reg2Addr(Reg2Addr),
        .Ctrl_IIC(IIC_Rst)
        );
      Video_Generator Video_Generator0(
                .clk(clk_100MHz_out),
                .state(state_now),
                .Set_X(hdata),
                .Set_Y(vdata),
                .shape(shape),
                .digital(digital),
                .colour(colour),
                .gray_data(gray_data),
                .RGB(RGBt),
                .v_date(RGB_Data),
                .RGB_Data(RGB_Data0)    //RBG
                );  


    shape_recognition judge(              //形状判断
         .clk(clk_100MHz_out),
         .data_in(gray_data),
         .hdata(hdata),
         .vdata(vdata),                            
         .shape(shape)
       );
   state state1(                     //状态切换
        .clk(clk_key),                                  
        .Key(key), 
        .LED1(LED_tri_o[0]),
        .LED2(LED_tri_o[1]),                                           
        .State(state_now)
        );
   digital_recognition number(         //数字识别
         .pclk(clk_100MHz_out),
         .data_in(gray_data),
         .VtcHCnt(hdata),
         .VtcVCnt(vdata),                            
         .digital(digital)
 );
   colour_recognition col(      //颜色识别
          .clk(clk_100MHz_out),
          .hc(hdata),
          .vc(vdata),
          .RGB24(HSV_data),
          .HSV(HSVt),
          .colour(colour)
       );  
     rgb2hsv_top hsv(           //转换成HSV
          .clk(clk_100MHz_out), 
          .RGB24(RGB_Data),
          .HSV24(HSV_data)
       );
     HSV_To_RGB rgb(             //转换成RGB
           .clk_Image_Process(clk_100MHz_out), 
           .Rst(1),
           .HSV_Data_H(HSVt[23:16]),
           .HSV_Data_S(HSVt[15:8]),
           .HSV_Data_V(HSVt[7:0]),
           .RGB_Data_R(RGBt[23:16]),
           .RGB_Data_G(RGBt[17:8]),
           .RGB_Data_B(RGBt[7:0])
        );
    rgb2gray rgb2gray0(      //灰度转换
          .clk(clk_100MHz_out), 
          .RGB24(RGB_Data),
           .Y(gray_data)
       );
endmodule
