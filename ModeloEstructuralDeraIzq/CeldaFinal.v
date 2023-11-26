`timescale 1ns/100ps


module CeldaFinal(output Z, input A, input B, input P_mid);

    wire not_B, and_or, not_or;     //Cables intermedios

//Instanciamos las compuertas
    and gate_and(and_or, not_b, A);
    or gate_or(not_or, and_or, P_mid);
    not gate_not(not_b, B);
    not gate_not(Z, not_or);

endmodule