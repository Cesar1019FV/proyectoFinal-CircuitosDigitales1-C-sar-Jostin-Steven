// module_2_tb.v
`timescale 1 ns/10 ps // time-unit = 1 ns, precision = 10 ps
module celda_tipica_tb();
  reg z, y, A, B, g_in;
  wire f_mid, g_mid;
 // duration for each bit = 20 * timescale = 20 * 1 ns = 20ns
 localparam period = 20;
 celda_tipica UUT (.z(z), .y(y), .A(A), .B(B), .g_in(g_in), .f_mid(f_mid), .g_mid(g_mid));

 initial // initial block executes only once
 begin
 $dumpfile ("module_2_tb.vcd");
 $dumpvars(1, celda_tipica_tb);

 // values for a, b, x and y
 A = 0; B = 0; 
 //codigo logico 
  reg miVectorA;
  reg miVectorB;
  //integer n;

    // Inicializa los vectores con valores de ejemplo
    miVectorA = A;
    miVectorB = B;

    // Bucle for para recorrer cada término de los vectores
    //for (n = 0; n < 3; n = n + 1) begin
      // Compara los términos correspondientes de los vectores
      if (miVectorA == miVectorB) begin
        y = 0;
        z = 1;
      end else if (miVectorA[n] > miVectorB[n]) begin
        y = 1;
        z = 0;
      end else begin
        y = 1;
        z = 1;
      end
      #period; // wait for period
      // Muestra los resultados para cada par de términos
      $display("Para n = %0d, y = %0d, z = %0d", n, y, z);
    //end
 end
endmodule