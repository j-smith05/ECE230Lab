module jk_ff(
    input J,K, clk, rst,
    output q,
    output notq
    );
    
    wire din;
    
    assign din = (J & notq)|
                 (~K & q);
    
    d_ff D(
       .d(din),
       .clk(clk),
       .rst(rst),
       .q(q),
       .notq(notq)
    );
endmodule