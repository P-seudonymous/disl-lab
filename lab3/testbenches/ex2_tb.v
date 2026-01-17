`timescale 1ns/1ps

module tb_q2;

    reg a, b, c, d;
    wire f;

    integer i;
    reg expected;

    // Instantiate DUT
    q2 dut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .f(f)
    );

    // Expected function: Σm(0,1,2,5,8,9,10)
    function exp_f;
        input a, b, c, d;
        begin
            case ({a,b,c,d})
                4'b0000,
                4'b0001,
                4'b0010,
                4'b0101,
                4'b1000,
                4'b1001,
                4'b1010: exp_f = 1'b1;
                default: exp_f = 1'b0;
            endcase
        end
    endfunction

    initial begin
        $display(" A B C D | F | EXP | RESULT");
        $display("----------------------------");

        for (i = 0; i < 16; i = i + 1) begin
            {a,b,c,d} = i[3:0];
            #5;

            expected = exp_f(a,b,c,d);

            $display(" %b %b %b %b | %b |  %b  | %s",
                     a, b, c, d,
                     f, expected,
                     (f === expected) ? "PASS" : "FAIL");

            if (f !== expected) begin
                $display("❌ Mismatch at input %b%b%b%b", a,b,c,d);
                $stop;
            end
        end

        $display("\n✅ All test cases passed.");
        $finish;
    end

endmodule

