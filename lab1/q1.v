//outputs:
//f1 = ac' + bc + b'c'
//f2 = (a+b'+c)+(a+b+c')+(a'+b+c')


module f1(a, b, c, f);
    input a, b, c;
    output f;

    assign f = (a&(~c)) | (b&c) | (~b&~c)

endmodule

module f2(a, b, c, d);
    input a, b, c;
    output f;
    
    assign f = (a | ~b | c) | (a | b | ~c) | (~a | b | ~c);
endmodule
