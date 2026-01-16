`timescale 1ns/1ns
`include "../ex1.v"

module q1_tb;
    reg a, b, c, d;
    wire f;

    q1 uut (.a(a), .b(b), .c(c), .d(d), .f(f));

    task apply;
        input aa, bb, cc, dd;
        input exp;
        begin
            a = aa; b = bb; c = cc; d = dd;
            #10;
            $display("%0t\t %b %b %b %b | %b | %b",
                     $time, a, b, c, d, f, exp);
        end
    endtask

    initial begin
        $dumpfile("q1_tb.vcd");
        $dumpvars(0, q1_tb);

        $display("Time\t a b c d | f | Expected");
        $display("-----------------------------------");

        apply(0,0,0,0,1);
        apply(0,0,0,1,1);
        apply(0,0,1,0,0); // m2
        apply(0,0,1,1,1);

        apply(0,1,0,0,1);
        apply(0,1,0,1,1);
        apply(0,1,1,0,0); // m6
        apply(0,1,1,1,1);

        apply(1,0,0,0,0); // m8
        apply(1,0,0,1,0); // m9
        apply(1,0,1,0,0); // m10
        apply(1,0,1,1,0); // m11

        apply(1,1,0,0,1);
        apply(1,1,0,1,1);
        apply(1,1,1,0,0); // m14
        apply(1,1,1,1,1);

        $display("\nSimulation completed");
        $finish;
    end
endmodule

