//qn: f(A,B,C,D) = ∏M(0,1,4,6,8,9,12,14)


module q2b(a, b, c, d, f);
    input a, b, c, d;
    output f;

    assign f = (a&b&c) | (~a&d) | (~b&~c&~d);

endmodule
