`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/27 15:56:30
// Design Name: 
// Module Name: orange
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


module grey(
    input [9:0] address,
input clock,   
output reg q                
);
reg [15:0] nub0=16'h0400;
reg [15:0] nub1=16'h0400;
reg [15:0] nub2=16'h0400;
reg [15:0] nub3=16'hFFFE;
reg [15:0] nub4=16'h0800;
reg [15:0] nub5=16'h0880;
reg [15:0] nub6=16'h0884;
reg [15:0] nub7=16'h1284;
reg [15:0] nub8=16'h1288;
reg [15:0] nub9=16'h2490;
reg [15:0] nub10=16'h2940;
reg [15:0] nub11=16'h4140;
reg [15:0] nub12=16'h8220;
reg [15:0] nub13=16'h0410;
reg [15:0] nub14=16'h1808;
reg [15:0] nub15=16'h6006;
wire [5:0] add=(address>>>4);
wire [3:0] add1=address[3:0];   
always@(posedge clock)
begin
    case(add)
    6'b000000:q<=nub0[16-add1];
    6'b000001:q<=nub1[16-add1];    
    6'b000010:q<=nub2[16-add1];
    6'b000011:q<=nub3[16-add1];
    6'b000100:q<=nub4[16-add1];
    6'b000101:q<=nub5[16-add1];    
    6'b000110:q<=nub6[16-add1];
    6'b000111:q<=nub7[16-add1];
    6'b001000:q<=nub8[16-add1];
    6'b001001:q<=nub9[16-add1];    
    6'b001010:q<=nub10[16-add1];
    6'b001011:q<=nub11[16-add1];
    6'b001100:q<=nub12[16-add1];
    6'b001101:q<=nub13[16-add1];    
    6'b001110:q<=nub14[16-add1];
    6'b001111:q<=nub15[16-add1];  
    default:q=0;
    endcase                                                 
end       
endmodule

