module adder(
    // Declare your A/B inputs
    input A, B, Cin,
    // Declare Y output
    output Y,
    // Declare carry output
    Cout
);

    // Enter logic equation here
    assign Y = A ^ B;
    assign Cout = A & B;

endmodule