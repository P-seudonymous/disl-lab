// f(A, B, C, D)= πM(4,9,12,13,14) + D(5,6,11,15)

module q4(a, b, c, d, f);
    input a, b, c, d;
    output f;

    wire g0, g1, g2, g3, g4, g5, g6, g7;

    nand (g0, c, c);
    nand (g1, d, d);

    nand (g2, a, d); // a' + d'

    nand (g3, b, g0); // b' + c

    nand (g4, b, g1); // b' + d 

    nand (g5, g2, g3);
    nand (g6, g5, g5);
    nand (g7, g6, g4);
    nand (f, g7, g7);

endmodule
