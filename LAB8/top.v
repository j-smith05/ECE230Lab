module top(
    input [15:0] sw,
    input btnL, btnU,
    input btnD, btnR,
    input btnC,
    output [15:0] led
);

    wire [1:0] mux;
    wire [1:0] demux;
    
    assign mux = {btnU, btnL};
    assign demux = {btnR, btnD};
    // Option one:
    wire [3:0] int_line;
    
    assign int_line =
        btnC ?
        (mux == 2'b00 ? sw[3:0]:
         mux == 2'b01 ? sw[7:4]:
         mux == 2'b10 ? sw[11:8]:
                       sw[15:12])
         : 4'b0000;
    
    wire[3:0] local_lib;
    wire[3:0] station;
    wire[3:0] school; 
    wire[3:0] shack;
    
    assign local_lib = (demux == 2'b00) ? int_line : 4'b0000;
    assign station = (demux == 2'b01) ? int_line : 4'b0000;
    assign school = (demux == 2'b10) ? int_line : 4'b0000;
    assign shack = (demux == 2'b11) ? int_line : 4'b0000;
    
    assign led[3:0] = local_lib;
    assign led[7:4] = station;
    assign led[11:8] = school;
    assign led[15:12] = shack;
    
endmodule