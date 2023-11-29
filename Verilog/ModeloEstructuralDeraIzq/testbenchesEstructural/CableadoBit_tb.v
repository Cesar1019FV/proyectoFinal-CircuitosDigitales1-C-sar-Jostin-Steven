module CableadoBit_tb();
    reg P;
    parameter N = 16; // Define aquí el número de bits para A y B
    wire Z_out;
    reg [N-1:0] miVectorA;
    reg [N-1:0] miVectorB;

    integer seed; // Variable de semilla para los números aleatorios

    localparam period = 20;
    CableadoBit uut (
        .Z_out(Z_out),
        .A(miVectorA),
        .B(miVectorB),
        .P(P)
    );

    integer i;

    initial begin
        $dumpfile("prueba4_tb.vcd");
        $dumpvars(1, CableadoBit_tb);
        
        for (i = 0; i < 10; i = i + 1) begin
            $display("Prueba %0d", i);
            
            seed = $random; // Inicializar la semilla

            miVectorA = $random(seed) % (1 << N); // Generar número aleatorio entre 0 y (2^N - 1)
            miVectorB = $random(seed) % (1 << N); // Generar número aleatorio entre 0 y (2^N - 1)

            $display("miVectorA = %b, miVectorB = %b", miVectorA, miVectorB);

            if (miVectorA > miVectorB)
                P = 1;
            else
                P = 0;

            #period;

            $display("P = %0d, Z_out = %0d", P, Z_out);
        end

        $finish; // Finalizar la simulación
    end
endmodule
