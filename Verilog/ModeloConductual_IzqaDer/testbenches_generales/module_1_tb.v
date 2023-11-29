// module_1_tb.v
`timescale 1 ns/10 ps // time-unit = 1 ns, precision = 10 ps
module celda_inicial_tb();            //
  reg A, B; //[2:0]                   //modelo optimizado para las pruebas de 1-bit
  wire f_in, g_in;                    //
                                      //Para hacer pruebas con todos bits se debe descomentar el vector y modificar los valores del testbench
 // duration for each bit = 20 * timescale = 20 * 1 ns = 20ns
 localparam period = 20;
 celda_inicial UUT (.A(A), .B(B), .f_in(f_in), .g_in(g_in));

 initial // initial block executes only once
 begin
 $dumpfile ("module_1_tb.vcd");
 //$dumpvars(1, module_1_tb);
 $dumpvars(1, celda_inicial_tb);

 // values for A and B
  A = 0; 
  B = 0; 
  #period; // wait for period
  A = 1; 
  B = 0; 
  #period;
  A = 0; 
  B = 1; 
  #period;
  A = 1; 
  B = 1; 
  #period;

  $finish; // Termina la simulación después de completar las pruebas
 end
endmodule