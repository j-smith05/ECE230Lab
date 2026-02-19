module circuit_a(
    // Declare inputs
    input A, B, C, D, 
    // Declare Y output
    output Y
);

    // Enter logic equation 
    assign Y = ~A & D;

endmodule
