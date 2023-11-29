module CeldaInicialBit(output P_in, 
input[2:0] A, B

);

    wire not_B;          //Cables intermedios

    and gate_and(P_in, not_B, A);
    not gate_not(not_B, B);

endmodule
