module ex1(a, b, c, d, f);
    input a, b, c, d;
    output f;
    wire g0, g1, g2, g3, g4, g5, g6; // i can create a wire by gate(wire, in1, in2);

    and (g0, a, b);
    and (g1, a, b);
    or (g2, g0, c);
    or (g3, g1, c);
    not (g4, g2);
    and (g5, g4, d);
    and (g6, g3, d);
    and (f, g5, g6);

endmodule
