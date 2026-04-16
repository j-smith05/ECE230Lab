module byte_memory(
    input [7:0] D,
    input E,
    output reg [7:0] Q
);
    always @(E, D) begin 
        if (E)
            Q <= D;
    end

endmodule
