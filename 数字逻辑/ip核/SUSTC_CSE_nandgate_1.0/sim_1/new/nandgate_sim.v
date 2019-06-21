`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/25 14:39:32
// Design Name: 
// Module Name: nandgate_sim
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


module nandgate_sim();
    reg sima=0,simb=0,simc=1,simd=1,sime=1,simf=1,simg=1,simh=1;
    wire simq;
    
    nandgate #(8,1) u(.a(sima),.b(simb),.c(simc),.d(simd),.e(sime),.f(simf),.g(simg),.h(simh),.q(simq));
    initial
    begin
    #100 sima=0;simb=1;
    #100 sima=1;simb=0;
    #100 sima=1;simb=1;
    end
endmodule
