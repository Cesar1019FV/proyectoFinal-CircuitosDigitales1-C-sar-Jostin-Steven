// module_2_tb.v
`timescale 1 ns/10 ps // time-unit = 1 ns, precision = 10 ps
module celda_tipica_tb();
  reg z, y, g_in;           //
  reg A, B; //[2:0]         //modelo optimizado para las pruebas de 1-bit
  wire f_mid, g_mid;        //Para hacer pruebas con todos bits se debe descomentar el vector y modificar los valores del testbench

  // duration for each bit = 20 * timescale = 20 * 1 ns = 20ns
  localparam period = 20;
  celda_tipica UUT (
    .z(z), .y(y), .g_in(g_in),
    .A(A), .B(B),
    .f_mid(f_mid), .g_mid(g_mid)
  );

  initial begin
    $dumpfile ("module_2_tb.vcd");
    $dumpvars(1, celda_tipica_tb);

    // caso de y = 0 y z = 1
    A = 0; B = 0; g_in = 0;
    y = 0; z = 1;
    #period;

    A = 0; B = 0; g_in = 1;
    y = 0; z = 1;
    #period;

    A = 0; B = 1; g_in = 0;
    y = 0; z = 1;
    #period;

    A = 0; B = 1; g_in = 1;
    y = 0; z = 1;
    #period;

    A = 1; B = 0; g_in = 0;
    y = 0; z = 1;
    #period;

    A = 1; B = 0; g_in = 1;
    y = 0; z = 1;
    #period;

    A = 1; B = 1; g_in = 0;
    y = 0; z = 1;
    #period;

    A = 1; B = 1; g_in = 1;
    y = 0; z = 1;
    #period;

    // caso de y = 1 y z = 0
    A = 0; B = 0; g_in = 0;
    y = 1; z = 0;
    #period;

    A = 0; B = 0; g_in = 1;
    y = 1; z = 0;
    #period;

    A = 0; B = 1; g_in = 0;
    y = 1; z = 0;
    #period;

    A = 0; B = 1; g_in = 1;
    y = 1; z = 0;
    #period;

    A = 1; B = 0; g_in = 0;
    y = 1; z = 0;
    #period;

    A = 1; B = 0; g_in = 1;
    y = 1; z = 0;
    #period;

    A = 1; B = 1; g_in = 0;
    y = 1; z = 0;
    #period;

    A = 1; B = 1; g_in = 1;
    y = 1; z = 0;
    #period;

    // caso de y = 1 y z = 1
    A = 0; B = 0; g_in = 0;
    y = 1; z = 1;
    #period;

    A = 0; B = 0; g_in = 1;
    y = 1; z = 1;
    #period;

    A = 0; B = 1; g_in = 0;
    y = 1; z = 1;
    #period;

    A = 0; B = 1; g_in = 1;
    y = 1; z = 1;
    #period;

    A = 1; B = 0; g_in = 0;
    y = 1; z = 1;
    #period;

    A = 1; B = 0; g_in = 1;
    y = 1; z = 1;
    #period;

    A = 1; B = 1; g_in = 0;
    y = 1; z = 1;
    #period;

    A = 1; B = 1; g_in = 1;
    y = 1; z = 1;
    #period;

    $finish; // Termina la simulación después de completar las pruebas
  end
endmodule
