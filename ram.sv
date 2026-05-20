`timescale 1ns / 1ps

module ram(
input logic ck,
input logic[10:0] addr_r,
input logic[10:0] addr_w,
input logic[7:0] data_w,
input logic w_en,
output logic [7:0] data_r );

logic [7:0] mem [0:2047];

assign data_r = mem[addr_r]; 

always_ff @(posedge ck)
if(w_en) mem[addr_w]<=data_w;

endmodule