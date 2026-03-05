module top(
    input[9:0] sw,
    output[13:0] led
);

half_sub one (
    .A(sw[0]),
    .B(sw[1]),
    .Y(led[0]),
    .borrow(led[1])
);

oc first (
    .A(sw[5:2]),
    .B(sw[9:6]),
    .Y(led[5:2])
);

tc second(
    .A(sw[9:2]),
    .Y(led[13:6])
);

endmodule