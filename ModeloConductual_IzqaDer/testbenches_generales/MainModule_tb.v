// MainModule_tb.v
`timescale 1 ns/10 ps // time-unit = 1 ns, precision = 10 ps
module MainModule_tb();
  reg z, y;
  wire f;
  reg [2:0] miVectorA;
  reg [2:0] miVectorB;

  // duration for each bit = 20 * timescale = 20 * 1 ns = 20ns
  localparam period = 20;
  system UUT (.A(miVectorA), .B(miVectorB), .z(z), .y(y), .f(f));

  initial // initial block executes only once
  begin
    $dumpfile("MainModule_tb.vcd");
    $dumpvars(1, MainModule_tb);

    // valores para a, b, x e y
    miVectorA = 3'b111;
    miVectorB = 3'b001;

    // bucle para comparar los bits de los vectores
    //integer n;
    
    for (integer n = 0; n < 3; n = n + 1) begin
      // Compara los términos correspondientes de los vectores
      if (miVectorA[n] == miVectorB[n]) begin
        y = 0;
        z = 1;
      end else if (miVectorA[n] > miVectorB[n]) begin
        y = 1;
        z = 0;
      end else begin
        y = 1;
        z = 1;
      end

      $display("Para n = %0d, y = %0d, z = %0d, f = %0d", n, y, z, f);
    end
  end
endmodule