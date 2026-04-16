module demux1(
    input In,
    input [1:0] sel,
    output w,
    output x,
    output y,
    output z
    );
    
    assign w = (sel == 0)? In : 0;
    assign x = (sel == 1)? In : 0;
    assign y = (sel == 2)? In : 0;
    assign z = (sel == 3)? In : 0;
endmodule