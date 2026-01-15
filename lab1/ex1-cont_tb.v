// to run the file:
// iverilog -o ex1_cont_sim ex1-cont_tb.v
// vvp ex1_cont_sim
// gtkwave ex1-cont_tb.v



`timescale 1ns/1ns
`include "ex1-cont.v" //name of the verilog file

module ex1_tb();
reg a, b, c, d; //input
wire f; //output
ex1 uut(a, b, c, d, f);

initial
begin //instantiation of the module

$dumpfile("ex1_cont_tb.vcd");
$dumpvars(0, ex1_tb); // 2^4 == 16 combinations

a=1'b0; b=1'b0; c=1'b0; d=1'b0;
#20;
a=1'b0; b=1'b0; c=1'b0; d=1'b1;
#20;
a=1'b0; b=1'b0; c=1'b1; d=1'b0;
#20;
a=1'b0; b=1'b0; c=1'b1; d=1'b1;
#20;
a=1'b0; b=1'b1; c=1'b0; d=1'b0;
#20;
a=1'b0; b=1'b1; c=1'b0; d=1'b1;
#20;
a=1'b0; b=1'b1; c=1'b1; d=1'b0;
#20;
a=1'b0; b=1'b1; c=1'b1; d=1'b1;
#20;
a=1'b1; b=1'b0; c=1'b0; d=1'b0;
#20;
a=1'b1; b=1'b0; c=1'b0; d=1'b1;
#20;
a=1'b1; b=1'b0; c=1'b1; d=1'b0;
#20;
a=1'b1; b=1'b0; c=1'b1; d=1'b1;
#20;
a=1'b1; b=1'b1; c=1'b0; d=1'b0;
#20;
a=1'b1; b=1'b1; c=1'b0; d=1'b1;
#20;
a=1'b1; b=1'b1; c=1'b1; d=1'b0;
#20;
a=1'b1; b=1'b1; c=1'b1; d=1'b1;
#20;

$display("simulation completed");
$finish;
end
endmodule
