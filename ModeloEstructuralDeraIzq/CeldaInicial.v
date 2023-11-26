`timescale 1ns/100ps


module my_or(output p, input A, input B);

    wire not_B;     //Cables intermedios

    and gate_and(p, not_b, A);
    not gate_not(not_b, B);

endmodule