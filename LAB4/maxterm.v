module maxterm (
    input A, B, C, D,
    output Y
);

assign Y = (~A | ~D) &
           (B | C | D) &
           (~B | ~D);

endmodule
