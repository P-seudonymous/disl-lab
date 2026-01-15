module ex2(a, b, c, d, f, g);
    input a, b, c, d;
    output f, g;
    wire g0;

    assign g0 = ~(a&b);
    assign f = d ^ g0 ^ c;
    assign g = ~(b|c|d);

endmodule
