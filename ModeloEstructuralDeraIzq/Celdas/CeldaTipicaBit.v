module CeldaTipicaBit(output P_mid, 
input[2:0] A, B, 
input P_in, P
);

    wire not_B, and_or1, and_or2, and_or3 ;          //Cables intermedios 

    and gate_and1(and_or1, P_in);
    and gate_and2(and_or2, not_B, P);
    and gate_and3(and_or3, A, P);
    not gate_not1(not_B, B);
    or gate_or(P_mid, and_or1, and_or2, and_or3);

endmodule
