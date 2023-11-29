module CableadoBit_tb();
    reg P;
    parameter N = 16; // Define aquí el número de bits para A y B
    wire Z_out;
    reg [N-1:0] miVectorA;
    reg [N-1:0] miVectorB;

    // Se añade la variable P en la instancia del módulo CableadoBit
    localparam period = 20;
    CableadoBit uut (
        .Z_out(Z_out),
        .A(miVectorA),
        .B(miVectorB),
        .P(P)
    );

    integer n;
    initial // initial block executes only once
    begin
        $dumpfile("prueba4_tb.vcd");
        $dumpvars(1, CableadoBit_tb);
        
        // Definir los vectores necesitados
        miVectorA = 16'b1101101010111111;
        miVectorB = 16'b110110101011010;      

        // Bucle para comparar los bits de los vectores
        for (n = N-1 ; n >= 0; n = n - 1) begin
            // Compara los términos correspondientes de los vectores
            if (miVectorA[n] == miVectorB[n]) begin
                $display("Por el momento las dos palabras son iguales");
                P = 0;
                #period;
            end else if (miVectorA[n] > miVectorB[n]) begin
                $display("La palabra A es mayor a la palabra B");
                P = 1;
                #period;
                $stop;
            end else begin
                $display("La palabra B es mayor a la palabra A");
                P = 0;
                #period;
                $stop;
            end

            $display("Para n = %0d, P = %0d, Z_out = %0d", n, P, Z_out);
            #period;
        end
    end
endmodule
