`timescale 1ns / 1ps


module simu(  );

logic en, reset, ck;
logic [7:0] sir;
logic tester;

top dut(.sir(sir),
        .tester(tester),
        .ck(ck),
        .en(en),
        .reset(reset));
    

initial  begin 
ck=0;
forever #5 ck=~ck;
end

initial begin
en = 0;
reset = 1;
#20;
reset = 0;
#10;
en = 1;
#5000;
en = 0;
      
$stop;
    end
endmodule


