module t_ff(
    input t, clk,rst,
    output q, notq
    );
    
   
    jk_ff Tflip(
       .J(t),
       .K(t),
       .clk(clk),
       .rst(rst),
       .q(q),
       .notq(notq)
    );
    
    
endmodule