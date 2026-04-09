module top(
    input btnC, btnU,
    output [6:0] led
);
    // Ripple Counter
    wire qc1;
    wire qc2;
    wire qc3;
    wire tqn1;
    wire tqn2;
    wire tqn3;
    
    // Modulo Counter
    wire mod1;
    wire mod2;
    wire mod3;
    wire modqn1;
    wire modqn2;
    wire modqn3;
    
    // Increment
    wire count1;
    wire count2;
    wire count3;
    
    // Carry
    wire carry1;
    wire carry2;
    wire carry3;
    
    // State
    wire state1;
    wire state2;
    wire state3;
    wire state4;
    
    // Output
    wire out;
    wire outqn;
    wire modout;
    
    // Ripple Counter
   ////////////////////////////////// 
    t_ff ripple1(
        .t(1'b1),
        .clk(btnC),
        .rst(btnU),
        .q(qc1),
        .notq(tqn1)
    );
    t_ff ripple2(
         .t(1'b1),
        .clk(qc1),
         .rst(btnU),
        .q(qc2),
        .notq(tqn2)
    );
    t_ff ripple3(
         .t(1'b1),
        .clk(qc2),
         .rst(btnU),
        .q(qc3),
        .notq(tqn3)
    );
    //////////////////////////////////
    
    //Modulo Divider
    //////////////////////////////////
    full_adder adder1(
    .A(mod1),
    .B(1'b1),
    .Cin(1'b0),
    .Y(count1),
    .Cout(carry1)
    );
    full_adder adder2(
     .A(mod2),
    .B(1'b0),
    .Cin(carry1),
    .Y(count2),
    .Cout(carry2)
    );
    full_adder adder3(
     .A(mod3),
    .B(1'b0),
    .Cin(carry2),
    .Y(count3),
    .Cout(carry3)
    );
    //////////////////////////////////
    
    //Terminal Count
    //////////////////////////////////
    assign state1 = (mod3 & modqn2 & mod1);
    assign state2 = (state1 ? 1'b0 : count1);
    assign state3 = (state1 ? 1'b0 : count2);
    assign state4 = (state1 ? 1'b0 : count3);
    assign out = (state1 ? outqn : modout);
    //////////////////////////////////
    
    // State Storage
    //////////////////////////////////
    d_ff modcount1(
    .d(state2),
    .clk(btnC),
    .q(mod1),
    .notq(modqn1)
    );
    d_ff modcount2(
    .d(state3),
    .rst(btnU),
    .clk(btnC),
    .q(mod2),
    .notq(modqn2)
    );
    d_ff modcount3(
    .d(state4),
    .rst(btnU),
    .clk(btnC),
    .q(mod3),
    .notq(modqn3)
    );
    d_ff mout(
    .d(out),
    .rst(btnU),
    .clk(btnC),
    .q(modout),
    .notq(outqn)
    );
    //////////////////////////////////
    
    // Board Definitions
    //////////////////////////////////
    assign led[0] = qc1;
    assign led[1] = qc2;
    assign led[2] = qc3;
    assign led[3] = mod1;
    assign led[4] = mod2;
    assign led[5] = mod3;
    assign led[6] = modout;
    //////////////////////////////////

  endmodule
