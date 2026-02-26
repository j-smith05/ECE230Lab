// Implement module called full_adder
module full_adder(
    // Declare your A/B inputs
    input A, B, Cin,
    // Declare Y output
    output Y,
    // Declare carry output
    Cout
);

    // Enter logic equation here
    assign Y = A ^ B ^ Cin;
    assign Cout = (A & B) | (Cin & (A^B));

endmodule