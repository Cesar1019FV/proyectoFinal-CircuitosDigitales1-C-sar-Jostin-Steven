module Cableado(
    output Z,
    input A,
    input B
    );

    wire P_in; // Cable intermedio entre CeldaInicial y CeldaTipica
    wire P_mid; // Cable intermedio entre CeldaTipica y CeldaFinal

    // Instancias de las celdas
    CeldaInicial inicial(
        .P_in(P_in),
        .A(A),
        .B(B)
    );

    CeldaTipica tipica(
        .P_mid(P_mid),
        .A(A),
        .B(B),
        .P_in(P_in)
    );

    CeldaFinal final(
        .Z(Z),
        .A(A),
        .B(B),
        .P_mid(P_mid)
    );

endmodule