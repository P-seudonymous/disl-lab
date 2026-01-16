`timescale 1ns/1ns
`include "../ex1.v"

module q1_tb();
    reg a, b, c, d;
    wire f;
    
    q1 uut(a, b, c, d, f);
    
    initial begin
        $dumpfile("q1_tb.vcd");
        $dumpvars(0, q1_tb);
        
        $display("Time\t a b c d | f | Expected");
        $display("-----------------------------------");
        
        // Test all 16 combinations
        a=1'b0; b=1'b0; c=1'b0; d=1'b0;
        #20 $display("%0t\t %b %b %b %b | %b | 1", $time, a, b, c, d, f);
        
        a=1'b0; b=1'b0; c=1'b0; d=1'b1;
        #20 $display("%0t\t %b %b %b %b | %b | 1", $time, a, b, c, d, f);
        
        a=1'b0; b=1'b0; c=1'b1; d=1'b0;  // m2 - maxterm
        #20 $display("%0t\t %b %b %b %b | %b | 0", $time, a, b, c, d, f);
        
        a=1'b0; b=1'b0; c=1'b1; d=1'b1;
        #20 $display("%0t\t %b %b %b %b | %b | 1", $time, a, b, c, d, f);
        
        a=1'b0; b=1'b1; c=1'b0; d=1'b0;
        #20 $display("%0t\t %b %b %b %b | %b | 1", $time, a, b, c, d, f);
        
        a=1'b0; b=1'b1; c=1'b0; d=1'b1;
        #20 $display("%0t\t %b %b %b %b | %b | 1", $time, a, b, c, d, f);
        
        a=1'b0; b=1'b1; c=1'b1; d=1'b0;  // m6 - maxterm
        #20 $display("%0t\t %b %b %b %b | %b | 0", $time, a, b, c, d, f);
        
        a=1'b0; b=1'b1; c=1'b1; d=1'b1;
        #20 $display("%0t\t %b %b %b %b | %b | 1", $time, a, b, c, d, f);
        
        a=1'b1; b=1'b0; c=1'b0; d=1'b0;  // m8 - maxterm
        #20 $display("%0t\t %b %b %b %b | %b | 0", $time, a, b, c, d, f);
        
        a=1'b1; b=1'b0; c=1'b0; d=1'b1;  // m9 - maxterm
        #20 $display("%0t\t %b %b %b %b | %b | 0", $time, a, b, c, d, f);
        
        a=1'b1; b=1'b0; c=1'b1; d=1'b0;  // m10 - maxterm
        #20 $display("%0t\t %b %b %b %b | %b | 0", $time, a, b, c, d, f);
        
        a=1'b1; b=1'b0; c=1'b1; d=1'b1;  // m11 - maxterm
        #20 $display("%0t\t %b %b %b %b | %b | 0", $time, a, b, c, d, f);
        
        a=1'b1; b=1'b1; c=1'b0; d=1'b0;
        #20 $display("%0t\t %b %b %b %b | %b | 1", $time, a, b, c, d, f);
        
        a=1'b1; b=1'b1; c=1'b0; d=1'b1;
        #20 $display("%0t\t %b %b %b %b | %b | 1", $time, a, b, c, d, f);
        
        a=1'b1; b=1'b1; c=1'b1; d=1'b0;  // m14 - maxterm
        #20 $display("%0t\t %b %b %b %b | %b | 0", $time, a, b, c, d, f);
        
        a=1'b1; b=1'b1; c=1'b1; d=1'b1;
        #20 $display("%0t\t %b %b %b %b | %b | 1", $time, a, b, c, d, f);
        
        $display("\nSimulation completed");
        $finish;
    end
endmodule

