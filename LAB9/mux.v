
module mux(
    input [7:0] A,
    input[7:0] B,
    input [7:0] C,
    input [7:0] D,
    input [1:0] Sel,
    output [7:0] Y 
    );
    
    assign Y = 
        (Sel == 0) ? A:
        (Sel == 1) ? B:
        (Sel == 2) ? C:
        (Sel == 3) ? D: 8'b0;
endmodule
