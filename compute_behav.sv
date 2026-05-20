`timescale 1ns / 1ps

module compute_behav(
input logic  [7:0] in0, // f(n-1)
    input logic  [7:0] in1, // f(n-2)
    output logic [7:0] out );
  

logic [7:0] f;
    
always_comb
if(in0[0]==0) f=(2*in1+in0+3);
    else f=(2*in1+in0+-1);   
    
assign out=f;
endmodule
