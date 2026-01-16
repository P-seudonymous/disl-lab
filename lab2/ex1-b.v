//qn: f(A,B,C,D) = ∑m(1,3,4,9,10,12) + D(0,2,5,11)

module q1b(a, b, c, d, f);
    input a, b, c, d;
    output f;

    assign f = (~b&d) | (~b&c) | (b&~c&~d)

endmodule
