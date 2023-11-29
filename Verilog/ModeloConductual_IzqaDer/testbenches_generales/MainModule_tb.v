// MainModule_tb.v
//`include "system.v"
`timescale 1 ns/10 ps // time-unit = 1 ns, precision = 10 ps
module MainModule_tb();
  reg z, y;
  wire f;
                                  // modelo optimizado para pruebas de 16-bits
  reg [15:0] miVectorA;            // Para hacer pruebas con todos bits se debe modificar el vector y modificar los valores del testbench 
  reg [15:0] miVectorB;            // (en caso de hacer pruebas con 1-bit, se debe eliminar el for y el [n])

  // duration for each bit = 20 * timescale = 20 * 1 ns = 20ns
  localparam period = 20;
  system UUT (.A(miVectorA), .B(miVectorB), .z(z), .y(y), .f(f));

  integer n;
  initial // initial block executes only once
  begin
    $dumpfile("MainModule_tb.vcd");
    $dumpvars(1, MainModule_tb);
    
    //definir los vectores necesitados
    miVectorA = 16'b1101101010110101; 
    miVectorB = 16'b1101101010111111;

    // bucle para comparar los bits de los vectores
      for (n = 15; n >= 0; n = n - 1) begin
        // Compara los términos correspondientes de los vectores
        if (miVectorA[n] == miVectorB[n]) begin 
          $display("Por el momento las dos palabras son iguales");
          y = 0;
          z = 1;
          #period;
        end else if (miVectorA[n] > miVectorB[n]) begin
          $display("La palabra A es mayor a la palabra B");
          y = 1;
          z = 0;
          #period;
          $finish;
        end else begin
          $display("La palabra B es mayor a la palabra A");
          y = 1;
          z = 1;
          #period;
          $finish;
        end

        $display("Para n = %0d,  y = %0d, z = %0d, f = %0d", n, y, z, f);
        #period;
      end
    
  end
endmodule
