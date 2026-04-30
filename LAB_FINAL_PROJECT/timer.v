// Timer: Modulo-60 Counter
// Counts from 0 to 59, then wraps back to 0
module timer(
    input clk,                 // Clock signal: counter increments on each rising edge
    input rst,                 // Reset: forces counter back to 0 when high
    input en,                  // Enable: counter only advances when high
    output reg [5:0] state     // 6-bits to hold values 0–59
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= 6'd0;        // Reset counter to 0
        else if (en) begin
            if (state == 6'd59)
                state <= 6'd0;    // Wrap around after 59 (modulo-60)
            else
                state <= state + 1; // Increment counter
        end
    end
endmodule
