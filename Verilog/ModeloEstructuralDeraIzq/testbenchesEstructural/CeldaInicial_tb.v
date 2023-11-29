`timescale 1 ns/100 ps

module CeldaInicial_tb;
    reg A, B;
    wire P_in;
    localparam period = 10;

    // Instancia del módulo CeldaInicial
    CeldaInicial uut (
        .A(A),
        .B(B),
        .P_in(P_in)
    );

    // Inicialización de las entradas A y B
    initial begin
        $dumpfile ("modulo_1_tb_.vcd");
        $dumpvars(1, CeldaInicial_tb); 

         // Valores para A y B
        A = 0;
        B = 0;
        #period; // Periodod de espera
        A = 0;
        B = 1;
        #period;
        A = 1;
        B = 0;
        #period;
        A = 1;
        B = 1;
        #period;

    end

endmodule
