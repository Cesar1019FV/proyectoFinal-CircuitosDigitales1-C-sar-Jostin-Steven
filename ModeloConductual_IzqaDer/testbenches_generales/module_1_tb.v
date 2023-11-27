// module_1_tb.v
`timescale 1 ns/10 ps // time-unit = 1 ns, precision = 10 ps
module celda_inicial_tb();
  reg [2:0] A, B;
  wire f_in, g_in;
 // duration for each bit = 20 * timescale = 20 * 1 ns = 20ns
 localparam period = 20;
 celda_inicial UUT (.A(A), .B(B), .f_in(f_in), .g_in(g_in));

 initial // initial block executes only once
 begin
 $dumpfile ("module_1_tb.vcd");
 //$dumpvars(1, module_1_tb);
 $dumpvars(1, celda_inicial_tb);

 // values for A and B
  A = 3'b000; // Cambiado a 3 bits
  B = 3'b000; // Cambiado a 3 bits
  #period; // wait for period
  A = 3'b001; // Cambiado a 3 bits
  B = 3'b010; // Cambiado a 3 bits
  #period;
  A = 3'b110; // Cambiado a 3 bits
  B = 3'b011; // Cambiado a 3 bits
  #period;
  A = 3'b111; // Cambiado a 3 bits
  B = 3'b101; // Cambiado a 3 bits
  #period;

  $finish; // Termina la simulación después de completar las pruebas
 end
endmodule