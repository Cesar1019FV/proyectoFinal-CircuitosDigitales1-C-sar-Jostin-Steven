`timescale 1ns/100ps

module CeldaFinal_tb;

    reg P_mid;
    wire Z_out;
    localparam period = 10;

    // Instancia del módulo my_or
    CeldaFinal uut (
        .Z_out(Z_out),
        .P_mid(P_mid)
    );

   // Inicialización de las entradas A, B, y P_in
     initial begin
        $dumpfile("modulo_3_tb_.vcd");
        $dumpvars(1, CeldaFinal_tb);

        // Valores para A y B
        P_mid = 1;

        #period; // Periodod de espera
        P_mid = 0;
        #period;

    end
endmodule