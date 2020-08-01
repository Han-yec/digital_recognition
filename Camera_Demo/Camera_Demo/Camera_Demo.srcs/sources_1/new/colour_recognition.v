`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/26 19:35:43
// Design Name: 
// Module Name: colour_recognition
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


module colour_recognition(
    input clk,
    input [10:0] vc,
    input [11:0] hc,
    input [23:0] RGB24,
    output reg [24:0] HSV,
    output reg [3:0] colour
);
wire [7:0]H,S,V;
assign H=RGB24[23:16];
assign S=RGB24[15:8];
assign V=RGB24[7:0];
 reg [18:0]H1;
 reg [18:0]S1;
 reg [18:0]V1;
 reg [18:0]Ht;
 reg [7:0]St;
 reg [7:0]Vt;
 reg [3:0] color1;
 reg [3:0] color2;
 reg [10:0] count;
 always@(posedge clk)            
  begin
    if(vc==200)              //��������
        begin
            H1<=17'h0;
            S1<=17'h0;
            V1<=17'h0;             
         end
   else if(hc>=640-16 && hc<640+16 && vc>=360-16&&vc<360+16)  //��ȡһ�������ڵ�RGB����
        begin
           H1<=H1+H;
           V1<=V1+V;
           S1<=S1+S;
       end
    else if(vc==500)
        begin
           Ht=(H1>>>10);
           Vt=(V1>>>10);
           St=(S1>>>10);
        end
    else
        begin
           H1<=H1;
           V1<=V1;
           S1<=S1;
        end      
  end

 always@(posedge clk)                      //����ζ�ȡ��ͬһ��ֵʱ���
     begin
         if( (vc==600)&&(hc==100))         //����
         begin
               if(St<43)
                 begin
                    if(St<30)
                        begin
                           if(Vt>=221) color1=4'h2;//��ɫ
                           else if(Vt<46)color1=4'h0;//��ɫ
                           else      color1=4'h1;//��ɫ
                        end
                     else
                         begin
                             if(Vt>46&&Vt<221) color1=4'h1;//��ɫ
                             else color1=4'h0;//��ɫ
                         end
                 end
               else
                   begin
                      if(Vt>46)
                        begin
                         if(Ht>125&&Ht<=155) color1=4'h9;//��ɫ
                         else if(Ht>100&&Ht<=125)color1=4'h8;//��ɫ
                         else if(Ht>78&&Ht<=100)color1=4'h7;//��ɫ
                         else if(Ht>35&&Ht<=78)color1=4'h6;//��ɫ
                         else if(Ht>26&&Ht<=35)color1=4'h5;//��ɫ
                         else if(Ht>11&&Ht<=26)color1=4'h4;//��ɫ                        
                         else                  color1=4'h3;// ��ɫ   
                         end
                       else   color1=4'h0;//��ɫ           
                    end
           end
      else  if((vc==700)&&(hc==150))
          begin
              if(color2==color1)               //����
                    count<=count+1'b1;
              else count<=11'h0;
                
               if((count>20)&&(color2==color1))
                         begin
                         colour<=color1;             //����20�ζ�ȡ��ֵ
                          HSV={{Ht},{St},{Vt}};
                         end
                else
                         color2<=color1;
            end

end
  
  
endmodule
