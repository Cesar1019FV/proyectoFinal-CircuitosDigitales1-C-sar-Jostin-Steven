// MainModule_tb.v
`timescale 1 ns/10 ps // time-unit = 1 ns, precision = 10 ps
module MainModule_tb();
  reg x, y, A, B;
  wire f;
 // duration for each bit = 20 * timescale = 20 * 1 ns = 20ns
 localparam period = 20;
 system UUT (.A(A), .B(B), .x(x), .y(y), .f(f));

 initial // initial block executes only once
 begin
 $dumpfile ("MainModule_tb.vcd");
 $dumpvars(1, MainModule_tb);

 // values for a, b, x and y
 A = 0; B = 0; x = 0; y = 0;
 #period; // wait for period
 A = 0; B = 0; x = 0; y = 1;
 #period;
 A = 0; B = 0; x = 1; y = 0;
 #period;
 A = 0; B = 0; x = 1; y = 1;
 #period;
 A = 0; B = 1; x = 0; y = 0;
 #period;
 A = 0; B = 1; x = 0; y = 1;
 #period;
 A = 0; B = 1; x = 1; y = 0;
 #period;
 A = 0; B = 1; x = 1; y = 1;
 #period;
 A = 1; B = 0; x = 0; y = 0;
 #period; 
 A = 1; B = 0; x = 0; y = 1;
 #period;
 A = 1; B = 0; x = 1; y = 0;
 #period;
 A = 1; B = 0; x = 1; y = 1;
 #period;
 A = 1; B = 1; x = 0; y = 0;
 #period;
 A = 1; B = 1; x = 0; y = 1;
 #period;
 A = 1; B = 1; x = 1; y = 0;
 #period;
 A = 1; B = 1; x = 1; y = 1;
 #period;
 end
endmodule