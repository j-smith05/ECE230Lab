module light(
    // Declare downstairs and upstairs input
    input up, down,
    // Declare stair light output
    output stair
);

    // Enter logic equation here
    assign stair = up ^ down;

endmodule