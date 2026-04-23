//Timer: Mod-60 downcounter with synchronous load
module timer(
    input clk,
    input rst,
    input en,               //Enables or Disables clock
    input load,             //If load=1, load the counter with "load_value"
    input [5:0] load_value, //Value to load into counter register. Counter will then start counting from this value
    output reg [5:0] state     //6-bits to represent the highest number 59
);

    wire [5:0] next_val;
    wire [4:0] y;
    
    assign next_val[0] = state[0] ^ 1'b1;
    assign y[0] = ~state[0] & 1'b1;
    assign next_val[1] = state[1] ^ y[0];
    assign y[1] = ~state[1] & y[0];
    assign next_val[2] = state[2] ^ y[1];
    assign y[2] = ~state[2] & y[1];
    assign next_val[3] = state[3] ^ y[2];
    assign y[3] = ~state[3] & y[2];
    assign next_val[4] = state[4] ^ y[3];
    assign y[4] = ~state[4] & y[3];
    assign next_val[5] = state[5] ^ y[4];

    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= 6'd0;
        else if (load)
            state <= load_value;
        else if(en) begin
            if(state != 6'd0)
                state <= next_val;
            end
         end

endmodule