module d_ff(
    input d,
    input clk,
    input rst,
    output reg q,
    output notq
);

    initial begin
        q <= 0;
    end

always @(posedge clk)
    if (rst)
        q <= 1'b0;
        else
            q <= d;

assign notq = ~q;

endmodule