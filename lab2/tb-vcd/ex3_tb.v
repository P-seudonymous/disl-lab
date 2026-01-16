`timescale 1ns/1ns
`include "ex3.v"

module q3_tb();
    reg x1, x2, x3, x4;
    wire f;
    
    q3 uut(x1, x2, x3, x4, f);
    
    initial begin
        $dumpfile("ex3_tb.vcd");
        $dumpvars(0, q3_tb);
        
        $display("x1 x2 x3 x4 | f");
        $display("-------------");
        
        // Test all 16 combinations
        {x1,x2,x3,x4} = 4'b0000; #10 $display("%b  %b  %b  %b  | %b", x1,x2,x3,x4,f);
        {x1,x2,x3,x4} = 4'b0001; #10 $display("%b  %b  %b  %b  | %b", x1,x2,x3,x4,f);
        {x1,x2,x3,x4} = 4'b0010; #10 $display("%b  %b  %b  %b  | %b", x1,x2,x3,x4,f);
        {x1,x2,x3,x4} = 4'b0011; #10 $display("%b  %b  %b  %b  | %b", x1,x2,x3,x4,f);
        {x1,x2,x3,x4} = 4'b0100; #10 $display("%b  %b  %b  %b  | %b", x1,x2,x3,x4,f);
        {x1,x2,x3,x4} = 4'b0101; #10 $display("%b  %b  %b  %b  | %b", x1,x2,x3,x4,f);
        {x1,x2,x3,x4} = 4'b0110; #10 $display("%b  %b  %b  %b  | %b", x1,x2,x3,x4,f);
        {x1,x2,x3,x4} = 4'b0111; #10 $display("%b  %b  %b  %b  | %b", x1,x2,x3,x4,f);
        {x1,x2,x3,x4} = 4'b1000; #10 $display("%b  %b  %b  %b  | %b", x1,x2,x3,x4,f);
        {x1,x2,x3,x4} = 4'b1001; #10 $display("%b  %b  %b  %b  | %b", x1,x2,x3,x4,f);
        {x1,x2,x3,x4} = 4'b1010; #10 $display("%b  %b  %b  %b  | %b", x1,x2,x3,x4,f);
        {x1,x2,x3,x4} = 4'b1011; #10 $display("%b  %b  %b  %b  | %b", x1,x2,x3,x4,f);
        {x1,x2,x3,x4} = 4'b1100; #10 $display("%b  %b  %b  %b  | %b", x1,x2,x3,x4,f);
        {x1,x2,x3,x4} = 4'b1101; #10 $display("%b  %b  %b  %b  | %b", x1,x2,x3,x4,f);
        {x1,x2,x3,x4} = 4'b1110; #10 $display("%b  %b  %b  %b  | %b", x1,x2,x3,x4,f);
        {x1,x2,x3,x4} = 4'b1111; #10 $display("%b  %b  %b  %b  | %b", x1,x2,x3,x4,f);
        
        $finish;
    end
endmodule

