module oc(
    input wire [3:0] A,
    input wire [3:0] B,
    output wire [3:0] Y
);

wire [3:0] sum1;
wire c1, c2, c3, around;

full_adder fa0(.A(A[0]), .B(B[0]), .Cin(1'b0), .Y(sum1[0]), .Cout(c1));
full_adder fa1(.A(A[1]), .B(B[1]), .Cin(c1), .Y(sum1[1]), .Cout(c2));
full_adder fa2(.A(A[2]), .B(B[2]), .Cin(c2), .Y(sum1[2]), .Cout(c3));
full_adder fa3(.A(A[3]), .B(B[3]), .Cin(c3), .Y(sum1[3]), .Cout(around));

wire sc1, sc2, sc3, sc4_not;

full_adder fa4(.A(sum1[0]), .B(around), .Cin(1'b0), .Y(Y[0]), .Cout(sc1));
full_adder fa5(.A(sum1[1]), .B(1'b0), .Cin(sc1), .Y(Y[1]), .Cout(sc2));
full_adder fa6(.A(sum1[2]), .B(1'b0), .Cin(sc2), .Y(Y[2]), .Cout(sc3));
full_adder fa7(.A(sum1[3]), .B(1'b0), .Cin(sc3), .Y(Y[3]), .Cout(sc4));

endmodule