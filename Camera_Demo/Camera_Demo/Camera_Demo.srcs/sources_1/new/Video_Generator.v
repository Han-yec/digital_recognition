`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/28 15:14:19
// Design Name: 
// Module Name: Video_Generator
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




module Video_Generator(
    input clk,
    input [2:0]state,
    input [11:0]Set_X,
    input [11:0]Set_Y,
    input [3:0] digital,
    input [3:0] shape,
    input [3:0] colour,
    input [23:0] RGB,
    input [23:0] v_date,
    input gray_data,
    output reg[23:0]RGB_Data=24'hffff00    //RBG
);
  reg [15:0]Address=0;
  wire [7:0]R_Data;
  wire qc,qb,qr,qy,qp,ql;
  reg [23:0]RGB_Data1;
   wire numb0,numb1,col,sha;
  always@(posedge clk)
      begin

        if(Set_X>=640-135&&Set_X<640+135&&Set_Y>360-133 && Set_Y<360+133)    //ÉãÏñÊä³ö                                                                        
           begin
          if  ((Set_X==640)&&((Set_Y>227 && Set_Y<240)||(Set_Y>475 && Set_Y<490)))  
                           RGB_Data<= 24'h00ffaa;
             else if  ((Set_Y==340||Set_Y==390)&&((Set_X>505 && Set_X<520)||(Set_X>760 && Set_X<775)))
                            RGB_Data<= 24'h001111;
             else
                begin                           
                    if(state==1||state==3)
                      RGB_Data<= {24{ gray_data}};
                    else            
                       RGB_Data<= v_date;
                end       
            end 
        else if  (Set_X>=640-135&&Set_X<640+135&&(Set_Y==360-133||Set_Y==360+133||Set_Y==360-134||Set_Y==360+134) )
              begin
                RGB_Data<= 24'h111111;
               end   
                                         
        else if  (Set_Y>360-133 && Set_Y<360+133&&(Set_X==640-136||Set_X==640+135||Set_X==640-137||Set_X==640+136) )
                     begin
                       RGB_Data<= 24'h111111;
                      end    
        else if  (Set_X>100&&Set_X<=140&&Set_Y>=50 && Set_Y<=230)  //×´Ì¬ÊıÊä³ö
                    begin
                       RGB_Data<= numb0?24'hffffff:24'h111111;
                     end  
          else if  (Set_X>800&&Set_X<=880&&Set_Y>250 && Set_Y<=410)  //Êı×ÖÊä³ö
                        begin
                          if(state==1)
                            RGB_Data<= numb1?24'hffffff:24'h111111;
                           else if(state==4) 
                             RGB_Data<=RGB;
                           else  RGB_Data<=24'hffffff;
                        end  
           else if  (Set_X>600&&Set_X<=728&&Set_Y>50 && Set_Y<=178)  //ĞÎ×´Êä³ö
                             begin
                                if(state==3)
                                   RGB_Data<= sha?24'h111111:24'hffffff;
                                else if(state==4) 
                                     RGB_Data<=RGB;
                                else  RGB_Data<=24'hffffff;
                               end                       
           else if  (Set_X>200&&Set_X<=328&&Set_Y>250 && Set_Y<=378)  //ÑÕÉ«Êä³ö
                          begin
                          if(state==2)
                            RGB_Data<= col?24'h111111:24'hffffff;
                           else if(state==4) 
                             RGB_Data<= col?24'h111111:24'hffffff;
                          else  RGB_Data<=24'hffffff;
                          end                                                                                                                                                                
        else
                          begin
                             if(state==4)
                             RGB_Data<=RGB;
                              else  RGB_Data<=24'hffffff;
        end                                                                                                                                                                

      end
numbershow num_show(                  //×´Ì¬ÏÔÊ¾
                          .clk(clk),
                          .vc(Set_Y),
                          .hc(Set_X),
                          .data(state),
                          .rom_data(numb0)
                          );
 numbershow1 num_show1(                  //Êı×ÖÏÔÊ¾
                           .clk(clk),
                           .vc(Set_Y),
                           .hc(Set_X),
                           .data(digital),
                           .rom_data(numb1)
                           );
 colorshow color_show(                  //ÑÕÉ«ÏÔÊ¾
                            .clk(clk),
                            .vc(Set_Y),
                            .hc(Set_X),
                            .data(colour),
                            .rom_data(col)
                         );    
   shapeshow shape_show(                  //ĞÎ×´ÏÔÊ¾
                             .clk(clk),
                             .vc(Set_Y),
                             .hc(Set_X),
                             .data(shape),
                             .rom_data(sha)
                                                 );                           
                                                                                                    
          endmodule                           
      