module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    wire zoh;
    wire zb;
    wire [4:0] soh;
    wire [2:0] sb;
    
    one_hot oh_fsm(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(zoh),
        .State(soh)
    );
    
    binary b_fsm(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(zb),
        .State(sb)
    );
    
    assign led = {sb, soh, zb, zoh};
    
endmodule