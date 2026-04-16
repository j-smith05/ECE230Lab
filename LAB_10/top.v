module top(
    input [3:0] sw,
    input btnC,
    output [5:0] led
);
    d_ff Dflip(
        .d(sw[0]),
        .q(led[0]),
        .notq(led[1]),
        .clock(btnC)
    );
    jk_ff JKflip(
        .J(sw[1]),
        .K(sw[2]),
        .q(led[2]),
        .notq(led[3]),
        .clock(btnC)
    );
    t_ff Tflip(
        .t(sw[3]),
        .q(led[4]),
        .notq(led[5]),
        .clock(btnC)
    );

endmodule