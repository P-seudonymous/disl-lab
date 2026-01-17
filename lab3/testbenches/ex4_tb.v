`timescale 1ns/1ns
`include "../ex4.v"

module q4_tb;

    reg a, b, c, d;
    wire f;

    q4 dut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .f(f)
    );

    task apply;
        input [3:0] v;
        input [15*8:1] note;
        begin
            {a,b,c,d} = v;
            #10;
            $display("%4t  %b%b%b%b   %b     %s",
                     $time, a,b,c,d, f, note);
        end
    endtask

    initial begin
        $dumpfile("q4_tb.vcd");
        $dumpvars(0, q4_tb);

        $display("Time  ABCD   f   Remark");
        $display("------------------------------");

        apply(4'b0000, "ON  (allowed 1)");
        apply(4'b0001, "ON  (allowed 1)");
        apply(4'b0010, "ON  (allowed 1)");
        apply(4'b0011, "ON  (allowed 1)");

        apply(4'b0100, "OFF (maxterm)");
        apply(4'b0101, "DC  (dont care)");
        apply(4'b0110, "DC  (dont care)");
        apply(4'b0111, "ON  (allowed 1)");

        apply(4'b1000, "ON  (allowed 1)");
        apply(4'b1001, "OFF (maxterm)");
        apply(4'b1010, "ON  (allowed 1)");
        apply(4'b1011, "DC  (dont care)");

        apply(4'b1100, "OFF (maxterm)");
        apply(4'b1101, "OFF (maxterm)");
        apply(4'b1110, "OFF (maxterm)");
        apply(4'b1111, "DC  (dont care)");

        $display("\nLegend:");
        $display("OFF : forced 0 (πM)");
        $display("ON  : forced 1");
        $display("DC  : don't-care");

        $finish;
    end

endmodule

