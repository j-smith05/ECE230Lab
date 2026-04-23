//StopWatch: Modulo-60 Counter
module stopwatch(
    input clk,
    input rst,
    input en,
    output reg [5:0] state     //6-bits to represent the highest number 59
);
    wire [5:0] next_v;
    wire [4:0] x;
    
    assign next_v[0] = state[0] ^ 1'b1;
    assign x[0] = state[0] & 1'b1;
    assign next_v[1] = state[1] ^ x[0];
    assign x[1] = state[1] & x[0];
    assign next_v[2] = state[2] ^ x[1];
    assign x[2] = state[2] & x[1];
    assign next_v[3] = state[3] ^ x[2];
    assign x[3] = state[3] & x[2];
    assign next_v[4] = state[4] ^ x[3];
    assign x[4] = state[4] & x[3];
    assign next_v[5] = state[5] ^ x[4];
    
    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= 6'd0;
        else if(en) begin
            if(state == 6'd59)
                state <= 6'd0;
            else
                state <= next_v;
            end
         end
endmodule




