// module_3_tb.v
`timescale 1 ns/10 ps // time-unit = 1 ns, precision = 10 ps
module celda_final_tb();
  reg f_mid;
  wire f;

  // duration for each bit = 20 * timescale = 20 * 1 ns = 20ns
  localparam period = 20;
  celda_final UUT (
    .f_mid(f_mid),
    .f(f)
  );

  initial begin
    $dumpfile ("module_3_tb.vcd");
    $dumpvars(1, celda_final_tb);

    // values for f_mid
    f_mid = 1'b0;
    #period;

    f_mid = 1'b1;
    #period;

    f_mid = 1'b0;
    #period;

    f_mid = 1'b1;
    #period;

    $finish; // Termina la simulación después de completar las pruebas
  end
endmodule
