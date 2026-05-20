`timescale 1ns / 1ps
module compute_structural(
input logic [7:0] in0, // f(n-1)
    input logic [7:0] in1, // f(n-2)
    output logic[7:0] out);
    
    
logic[7:0] in1_ori_2;
   logic [7:0] suma_baza;
  logic [7:0] rez_par;
   logic[7:0] rez_impar;
    
    assign in1_ori_2 = {in1[6:0], 1'b0};
    assign suma_baza = in1_ori_2 + in0;
    assign rez_par   = suma_baza + 8'd3;
    assign rez_impar = suma_baza - 8'd1;
    
always_comb
if(in0[0]==0) out=rez_par;
        else out=rez_impar;
    

endmodule
