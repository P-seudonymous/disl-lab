//f(A, B, C, D)= πM(2,6,8,9,10,11,14)
//nand gates

module q1(a, b, c, d, f);
    input a, b, c, d;
    output f;
    
    wire g0, g1, g2, g3, g4, g5, g6, g7, g8, g9;
    wire t0, t1; //cascading nand gates for f

    nand (g0, a, a); // a'
    nand (g1, c, c); // c'
    nand (g2, g0, g1);
    nand (g3, g2, g2); //a'c'

    nand (g4, b, d);
    nand (g5, g4, g4); //bd
    
    nand (g6, g0, d);
    nand (g7, g6, g6); // a'd

    nand (g8, g1, b);
    nand (g9, g8, g8); // c'b

    // nand (f, g3, g5, g7, g9);
    // this doesnt work because nand primitive only accepts 2 inputs lmeow
    
    nand (t0, g3, g5);
    nand (t1, g7, g9);
    
    nand (f, t0, t1);
    

endmodule
