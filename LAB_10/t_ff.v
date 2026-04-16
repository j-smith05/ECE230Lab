module t_ff(
    input t, clock,
    output q, notq
    );
    
    wire din;
    assign din = (t & notq)|
                 (~t & q);
    assign notq = ~q;
    
    d_ff Tflip(
       .d(din),
       .clock(clock),
       .q(q),
       .notq(notq)
    );
    
    
endmodule
