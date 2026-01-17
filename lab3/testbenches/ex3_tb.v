`timescale 1ns/1ns
`include "../ex3.v"

module q3_tb();
    reg a, b, c, d;
    wire f;
    
    q3 uut(a, b, c, d, f);
    
    initial begin
        $dumpfile("q3_tb.vcd");
        $dumpvars(0, q3_tb);
        
        $display("ABCD | f | Expected");
        $display("-----|---|----------");
        
        {a,b,c,d} = 4'b0000; #10 $display("%b | %b | 0", {a,b,c,d}, f);
        {a,b,c,d} = 4'b0001; #10 $display("%b | %b | 1 (m1)", {a,b,c,d}, f);
        {a,b,c,d} = 4'b0010; #10 $display("%b | %b | 0", {a,b,c,d}, f);
        {a,b,c,d} = 4'b0011; #10 $display("%b | %b | 1 (m3)", {a,b,c,d}, f);
        {a,b,c,d} = 4'b0100; #10 $display("%b | %b | 0", {a,b,c,d}, f);
        {a,b,c,d} = 4'b0101; #10 $display("%b | %b | 1 (m5)", {a,b,c,d}, f);
        {a,b,c,d} = 4'b0110; #10 $display("%b | %b | X (DC)", {a,b,c,d}, f);
        {a,b,c,d} = 4'b0111; #10 $display("%b | %b | 1 (m7)", {a,b,c,d}, f);
        {a,b,c,d} = 4'b1000; #10 $display("%b | %b | 0", {a,b,c,d}, f);
        {a,b,c,d} = 4'b1001; #10 $display("%b | %b | 1 (m9)", {a,b,c,d}, f);
        {a,b,c,d} = 4'b1010; #10 $display("%b | %b | 0", {a,b,c,d}, f);
        {a,b,c,d} = 4'b1011; #10 $display("%b | %b | 0", {a,b,c,d}, f);
        {a,b,c,d} = 4'b1100; #10 $display("%b | %b | X (DC)", {a,b,c,d}, f);
        {a,b,c,d} = 4'b1101; #10 $display("%b | %b | X (DC)", {a,b,c,d}, f);
        {a,b,c,d} = 4'b1110; #10 $display("%b | %b | 0", {a,b,c,d}, f);
        {a,b,c,d} = 4'b1111; #10 $display("%b | %b | 0", {a,b,c,d}, f);
        
        $finish;
    end
endmodule

