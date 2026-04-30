// Timer: Mod-60 Down Counter with Synchronous Load
// Counts DOWN from a given value to 0, then holds at 0

module timer(
    input clk,                  // Clock signal (updates happen on rising edge)
    input rst,                  // Asynchronous reset (immediate reset to 0)
    input en,                   // Enable signal (counter only runs when en = 1)
    input load,                 // Load control (when 1, load_value is stored into state)
    input [5:0] load_value,     // Value to load into the counter (0–59)
    output reg [5:0] state      // 6-bit register to hold current count
);


    // Sequential Logic: Runs on clock edge or reset
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // Asynchronous reset: immediately set counter to 0
            state <= 6'd0;

        end else if (load) begin
            // Synchronous load: takes priority over counting
            // Loads a custom starting value into the counter
            state <= load_value;

        end else if (en) begin
            // Only count when enabled
            if (state != 6'd0) begin
                // Decrement the counter by 1 each clock cycle
                state <= state - 1'b1;
            end
            // If state == 0, do nothing (hold at 0)
        end

        // If en == 0, the counter holds its current value
    end

endmodule