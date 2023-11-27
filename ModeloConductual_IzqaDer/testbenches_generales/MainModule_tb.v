// MainModule_tb.v
//`include "system.v"
`timescale 1 ns/10 ps // time-unit = 1 ns, precision = 10 ps
module MainModule_tb();
  reg z, y;
  wire f;
  reg [2:0] miVectorA;
  reg [2:0] miVectorB;

  // duration for each bit = 20 * timescale = 20 * 1 ns = 20ns
  localparam period = 20;
  system UUT (.A(miVectorA), .B(miVectorB), .z(z), .y(y), .f(f));

  integer n;
  initial // initial block executes only once
  begin
    $dumpfile("MainModule_tb.vcd");
    $dumpvars(1, MainModule_tb);
    
    //definir los vectores necesitados
    miVectorA = 3'b111;
    miVectorB = 3'b101;

    // bucle para comparar los bits de los vectores
    //integer n;
      for (n = 2; n >= 0; n = n - 1) begin
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
          $stop;
        end else begin
          $display("La palabra B es mayor a la palabra A");
          y = 1;
          z = 1;
          #period;
          $stop;
        end

        $display("Para n = %0d, y = %0d, z = %0d, f = %0d", n, y, z, f);
        #period;
      end
    
  end
endmodule
