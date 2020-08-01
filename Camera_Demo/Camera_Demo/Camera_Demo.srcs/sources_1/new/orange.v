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


module orange(
    input [9:0] address,
input clock,   
output reg q                
);
reg [15:0] nub0=16'h1020;
reg [15:0] nub1=16'h17A4;
reg [15:0] nub2=16'h10A8;
reg [15:0] nub3=16'h1292;
reg [15:0] nub4=16'hF914;
reg [15:0] nub5=16'h1208;
reg [15:0] nub6=16'h35F4;
reg [15:0] nub7=16'h3802;
reg [15:0] nub8=16'h57F8;
reg [15:0] nub9=16'h5208;
reg [15:0] nub10=16'h9208;
reg [15:0] nub11=16'h13F8;
reg [15:0] nub12=16'h1208;
reg [15:0] nub13=16'h1110;
reg [15:0] nub14=16'h1FFE;
reg [15:0] nub15=16'h1000;
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

