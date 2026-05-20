`timescale 1ns / 1ps


module reg_8b(
input logic en,
input logic reset,
input logic [7:0] in,
input logic ck,
output logic [7:0] out );

always_ff @(posedge ck)
if(reset) out<=0;
    else if(en) out<=in;
    
endmodule
