`timescale 1ns / 1ps

module counter(
input logic en,
input logic reset,
input logic ck,
output logic [10:0] out  );

always_ff @(posedge ck)
if(reset) out<=0;
    else if(en) out<=out+1;
endmodule
