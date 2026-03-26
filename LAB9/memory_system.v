module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    wire [7:0] dataA;
    wire [7:0] dataA2;
    wire enA;
    wire [7:0] dataB;
    wire [7:0] dataB2;
    wire enB;
    wire [7:0] dataC;
    wire [7:0] dataC2;
    wire enC;
    wire [7:0] dataD;
    wire [7:0] dataD2;
    wire enD;
    
    demultiplexer input_demux(
    .data(data),
    .sel(addr),
    .A(dataA),
    .B(dataB),
    .C(dataC),
    .D(dataD)
    );
    
    demux1 enable_demux(
    .In(store),
    .sel(addr),
    .w(enA),
    .x(enB),
    .y(enC),
    .z(enD)
    );
    
    byte_memory byteA(
    .D(dataA),
    .E(enA),
    .Q(dataA2)
    );
    
    byte_memory byteB(
    .D(dataB),
    .E(enB),
    .Q(dataB2)
    );
    
    byte_memory byteC(
    .D(dataC),
    .E(enC),
    .Q(dataC2)
    );
    
    byte_memory byteD(
    .D(dataD),
    .E(enD),
    .Q(dataD2)
    );
    
    multiplexer8 output_mux(
    .A(dataA2),
    .B(dataB2),
    .C(dataC2),
    .D(dataD2),
    .Sel(addr),
    .Y(memory)
    );

endmodule
