module top(
    input [7:0] sw,
    output [5:0] led
    
);

light sl(
    .down(sw[0]),
    .up(sw[1]),
    .stair(led[0])
);

adder one(
    .A(sw[2]),
    .B(sw[3]),
    .Y (led[1]),
    .Cout(led[2])
);

wire carry1_2;

full_adder f_one(
    .A(sw[4]),
    .B(sw[6]),
    .Cin(1'b0),
    .Y(led[3]),
    .Cout(carry1_2)
);

full_adder f_two(
    .A(sw[5]),
    .B(sw[7]),
    .Cin(carry1_2),
    .Y(led[4]),
    .Cout(led[5])
);

endmodule