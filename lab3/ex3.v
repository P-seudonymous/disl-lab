// f(A, B, C, D) = ∑m(1,3,5,7,9) + D(6,12,13)


module q3(a, b, c, d, f);
    input a, b, c, d;
    output f;

    wire g0, g1, g2, g3, g4;

    nor (g0, d, d); //d'
    //nor (g1, c, c); //c'

    nor (g2, g0, a); // demorgans -> a'd
    
    nor (g3, g0, c); // demorgans -> c'd

    nor (g4, g2, g3);
    nor (f, g4, g4);

endmodule
