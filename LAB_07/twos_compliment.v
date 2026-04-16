module tc(
    input [7:0] A,
    output [7:0] Y
);

wire [7:0] inv;
wire c1, c2, c3, c4, c5, c6, c7, c8;

// invert A
assign inv = ~A;

full_adder fa0(.A(inv[0]), .B(1'b0), .Cin(1'b1), .Y(Y[0]), .Cout(c1));
full_adder fa1(.A(inv[1]), .B(1'b0), .Cin(c1), .Y(Y[1]), .Cout(c2));
full_adder fa2(.A(inv[2]), .B(1'b0), .Cin(c2), .Y(Y[2]), .Cout(c3));
full_adder fa3(.A(inv[3]), .B(1'b0), .Cin(c3), .Y(Y[3]), .Cout(c4));
full_adder fa4(.A(inv[4]), .B(1'b0), .Cin(c4), .Y(Y[4]), .Cout(c5));
full_adder fa5(.A(inv[5]), .B(1'b0), .Cin(c5), .Y(Y[5]), .Cout(c6));
full_adder fa6(.A(inv[6]), .B(1'b0), .Cin(c6), .Y(Y[6]), .Cout(c7));
full_adder fa7(.A(inv[7]), .B(1'b0), .Cin(c7), .Y(Y[7]), .Cout(c8));

endmodule