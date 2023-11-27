`timescale 1 ns/100 ps

module CeldaInicial_tb;
    reg [2:0] A, B;
    wire P_in;
    localparam N = 3; //Numero de bits
    localparam period = 10;

    // Instancia del módulo CeldaInicial
    CeldaInicial uut (
        .A(A),
        .B(B),
        .P_in(P_in)
    );

    // Declaración de variables integer a nivel de módulo
    integer i, j;

    // Inicialización de las entradas A y B
    initial begin
        $dumpfile ("prueba_tb_.vcd");
        $dumpvars(1, CeldaInicial_tb); 

          // Bucle para probar todas las combinaciones posibles de A y B (N bits) donde A y B son diferentes
        for (i = 0; i < 2**N; i = i + 1) begin
            for (j = 0; j < 2**N; j = j + 1) begin
                if (i != j) begin
                    A = i; // Asignar valor de i a A
                    B = j; // Asignar valor de j a B

                    #period; // Esperar un período

                    // Mostrar valores
                    $display("A = %b, B = %b, P_in = %b", A, B, P_in);
                end
            end
        end

        $finish; // Finalizar la simulación
    end

endmodule