// module_3_tb.v
`timescale 1 ns/10 ps // time-unit = 1 ns, precision = 10 ps
module celda_final_tb();
  reg g_mid;
  wire f;
 // duration for each bit = 20 * timescale = 20 * 1 ns = 20ns
 localparam period = 20;
 celda_final UUT (.g_mid(g_mid), .f(f));

 initial // initial block executes only once
 begin
 $dumpfile ("module_3_tb.vcd");
 $dumpvars(1, celda_final_tb);

// values for a and b
g_mid = 1;
#period; // wait for period
g_mid = 0;
#period; // wait for period
 end
endmodule