`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/24 15:44:37
// Design Name: 
// Module Name: norgate_sim
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


module norgate_sim( );
    reg sima = 0, simb = 0, simc = 0, simd = 0,
     sime =0, simf = 0, simg = 0, simh = 0;
    wire simq;
    
    norgate #(8, 1) u(.a(sima), .b(simb), 
    .c(simc), .d(simd), .e(sime), .f(simf), 
    .g(simg), .h(simh), .q(simq));
    
    initial
    begin
    #100 simb = 1;
    #100 sima = 1; simb = 0;
    #100 simb = 1;
    end
endmodule
