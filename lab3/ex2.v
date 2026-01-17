// NOR gates.
//f(A, B, C, D)= ∑m(0,1,2,5,8,9,10)

module q2(a, b, c, d, f);
    input a, b, c, d;
    output f;
    wire g0, g1, g2, g3, g4, g5, g6, g7, g8, g9, f0;
    wire y0, y1, f1, f2;
    
    nor (g3, d, d); // d'

    nor (g4, a, c);
    nor (g5, g4, g4); // a'c'
    nor (y0, g5, g3);

    nor (g7, b, c); // demogans -> b'c' == (b+c)'
    
    nor (g9, b, d); // b'd'

    nor (f0, y0, g7);
    nor (f1, f0, f0);
    nor (f2, f1, g9);
    nor (f, f2, f2);

endmodule


