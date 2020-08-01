`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/28 18:35:10
// Design Name: 
// Module Name: colorshow
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


module colorshow(
    input clk,
    input [10:0] vc,
    input [11:0] hc,
    input [3:0] data ,
    output reg  rom_data
);
parameter c_data_min = 200 ;
parameter c_data_max = 328 ;
parameter r_data_min = 250  ;
parameter r_data_max = 378  ;


wire qc,qb,qr,qy,qp,ql,qg,qgr,qo,qw;
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
    if(data == 0)
        rom_data <= qb ;
    else if(data == 1)
        rom_data <= qgr ;
    else if(data == 2)
        rom_data <= qw ;
    else if(data == 3)
        rom_data <= qr ;
    else if(data == 4)
        rom_data <= qo ;
    else if(data == 5)
        rom_data <= qy ;
    else if(data == 6)
        rom_data <= qg ;
    else if(data == 7)
        rom_data <= qc ;
    else if(data == 8)
        rom_data <= ql ;
    else if(data == 9)
        rom_data <= qp ;
    else
        rom_data <= 0 ;
end

   write write1(
      .clock(clk),    
      .address(Address),  
      .q(qw) 
    );
     orange orange1(
      .clock(clk),    
      .address(Address),  
      .q(qo) 
    );

    grey grey1(
      .clock(clk),    
      .address(Address),  
      .q(qgr) 
    );
     green green1(
      .clock(clk),    
      .address(Address),  
      .q(qg) 
    );
    blue blue1(
     .clock(clk),    
     .address(Address),  
     .q(ql) 
   );

      red red1(
      .clock(clk),    
      .address(Address),  
      .q(qr) 
    );
 
        cyan cyan1(
      .clock(clk),    
      .address(Address),  
      .q(qc) 
    );
        black black1(
      .clock(clk),    
      .address(Address),  
      .q(qb) 
    );
        purple purple1(
      .clock(clk),    
      .address(Address),  
      .q(qp) 
    );
  yellow yellow1(
  .clock(clk),    
  .address(Address),  
  .q(qy) 
);
endmodule
