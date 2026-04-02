module d_ff(
    input d,
    input clock,
    output reg q,
    output notq
);

    initial begin
        q <= 0;
    end

always @(posedge clock)
       q <= d;

assign notq = ~q;

endmodule