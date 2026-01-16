module q3(x1, x2, x3, x4, out);
    input x1, x2, x3, x4;
    output out;

    assign out = (x2 & x3 & x4) | (x1 & x3 & x4) | (x1 & x2 & x4) | (x1 & x2 & x3);

endmodule
