//qn: f(A,B,C,D) = ∑m (2,3,4,5,6,7,10,11,12,15)

module q1a(a, b, c, d, f);
    input a, b, c, d;
    output f;
    
    assign f = (c&d) | (b&~c&~d) | (~a&b) | (~b&c);

endmodule
