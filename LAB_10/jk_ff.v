module jk_ff(
    input J,K, clock,
    output q,
    output notq
    );
    
    wire din;
    
    assign din = (J & notq)|
                 (~K & q);
    assign notq = ~q;
    
    d_ff D(
       .d(din),
       .clock(clock),
       .q(q),
       .notq(notq)
    );
endmodule
