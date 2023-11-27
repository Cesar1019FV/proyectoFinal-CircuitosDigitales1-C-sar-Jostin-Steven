// module_2_tb.v
`timescale 1 ns/10 ps // time-unit = 1 ns, precision = 10 ps
module celda_tipica_tb();
  reg z, y, g_in;
  reg [2:0] A, B;
  wire f_mid, g_mid;

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

    // values for A, B, z, y, g_in
    A = 3'b000;
    B = 3'b000;
    y = 0;
    z = 1;;
    g_in = 0;
    #period;

    A = 3'b001;
    B = 3'b010;
    y = 1;
    z = 0;
    g_in = 1;
    #period;

    A = 3'b110;
    B = 3'b011;
     y = 1;
    z = 1;
    g_in = 0;
    #period;

    A = 3'b111;
    B = 3'b101;
    z = 0;
    y = 0;
    g_in = 1;
    #period;

    $finish; // Termina la simulación después de completar las pruebas
  end
endmodule
