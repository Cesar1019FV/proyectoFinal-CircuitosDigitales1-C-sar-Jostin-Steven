
module CableadoBit( output Z_out,
    input [2:0] A,
    input [2:0] B,
    input P
    );

    wire P_in; // Cable intermedio entre CeldaInicial y CeldaTipica
    wire P_mid; // Cable intermedio entre CeldaTipica y CeldaFinal

    // Instancias de las celdas
    CeldaInicialBit inicial(
        .P_in(P_in),
        .A(A),
        .B(B)
    );

    CeldaTipicaBit tipica(
        .P_mid(P_mid),
        .P(P),
        .A(A),
        .B(B),
        .P_in(P_in)
    );

    CeldaFinalBit final(
        .Z_out(Z_out),
        .P_mid(P_mid)
    );

endmodule
