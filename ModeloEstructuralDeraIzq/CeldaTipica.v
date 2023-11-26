`timescale 1ns/100ps


module CeldaTipica(output P_mid, input A, input B, input P_in);

    wire not_B, and_or;          //Cables intermedios 

    and gate_and(and_or, not_b, A);
    or gate_or(P_mid, and_or, P_in);
    not gate_not(not_b, B);

endmodule
