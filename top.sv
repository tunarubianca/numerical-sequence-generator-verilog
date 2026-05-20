`timescale 1ns / 1ps


module top(
input logic reset,
input logic en,
input logic ck,
output logic[7:0] sir,
output logic tester );

logic [7:0] w1, w2, w3, w7;
logic[10:0] w4, w5;

reg_8b c1(.en(en),
          .reset(reset),
          .ck(ck),
          .in(w2),
          .out(w1));
          
reg_8b c2(.en(en),
          .reset(reset),
          .ck(ck),
          .in(w1),
          .out(w3));
          
counter c3(.ck(ck),
           .en(en),
           .reset(reset),
           .out(w4));
           
           
substract c4(.in0(w4),
             .in1(1),
             .out(w5));
             
ram c5(.addr_r(w5),
       .addr_w(w4),
       .data_w(w2),
       .w_en(en),
       .ck(ck),
       .data_r(sir));
       
compute_structural c6(.in0(w1),
                      .in1(w3),
                      .out(w7));
                      
compute_behav c7(.in0(w1),
                .in1(w3),
                .out(w2));
                
comp_eq c8(.in0(w7),
           .in1(w2),
           .out(tester));
endmodule
