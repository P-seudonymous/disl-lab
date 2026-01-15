module ex2(a, b, c, d, f, g);
    input a, b, c, d;
    output f, g;
    wire g0;

    nand (g0, a, b);
    xor (f, d, g0, c);
    nor (g, b, c, d);

endmodule
