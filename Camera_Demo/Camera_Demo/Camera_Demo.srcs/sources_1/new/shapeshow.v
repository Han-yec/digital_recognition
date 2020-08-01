`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/29 11:45:25
// Design Name: 
// Module Name: shapeshow
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


module shapeshow(
    input clk,
input [10:0] vc,
input [11:0] hc,
input [3:0] data ,
output reg  rom_data
);
parameter c_data_min = 600 ;
parameter c_data_max = 728 ;
parameter r_data_min = 50  ;
parameter r_data_max = 178  ;


wire qs,qf,ql,qy;
reg [9:0] Address=10'b0 ;
always@(posedge clk)
begin

 if((hc > c_data_min && hc <= c_data_max) && (vc > r_data_min && vc <= r_data_max))
   Address <= ((hc-c_data_min)>>>3)+((vc-r_data_min)>>>3)*16;
else
    Address <= Address ;
end


always@(posedge clk)
begin

 if(data == 1)
    rom_data <= qs ;
else if(data == 2)
    rom_data <= qy ;
else if(data == 4)
    rom_data <= qf ;
else if(data == 8)
    rom_data <= ql ;
else
    rom_data <= 0 ;
end

ling ling1(
  .clock(clk),    
  .address(Address),  
  .q(ql) 
);
 fang fang1(
  .clock(clk),    
  .address(Address),  
  .q(qf) 
);

yuan yuan1(
  .clock(clk),    
  .address(Address),  
  .q(qy) 
);
 san san1(
  .clock(clk),    
  .address(Address),  
  .q(qs) 
);


endmodule
