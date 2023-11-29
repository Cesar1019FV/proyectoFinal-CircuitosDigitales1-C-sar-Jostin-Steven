`timescale 1ns/100ps

module CeldaTipica_tb;

    reg A, B, P_in, P;
    wire P_mid;
    localparam period = 10;

    // Instancia del módulo my_or
    CeldaTipica uut (
        .P_mid(P_mid),
        .A(A),
        .B(B),
        .P_in(P_in),
        .P(P)
    );

   // Inicialización de las entradas A, B, y P_in
     initial begin
        $dumpfile("modulo_2_tb_.vcd");
        $dumpvars(1, CeldaTipica_tb);

        // Valores para A, B Y P
        A = 0;
        B = 0;
        P = 0;
        P_in = 0;

        #period; // Periodod de espera
        A = 0;
        B = 1;
        P = 0;
        P_in = 0;
        #period;
        A = 1;
        B = 0;
        P = 1;
        P_in = 1;
        #period;
        A = 1;
        B = 1;
        P = 0;
        P_in = 0;
        #period;

    end
endmodule