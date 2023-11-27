//MainModule
`include "celda_inicial.v"
`include "celda_tipica.v"
`include "celda_final.v"

module system(
    input [2:0] A, B,
    input z, y,
    output f
);

//conexiones generadas para el cableado de cada celda
wire f_in;
wire g_in;
wire f_mid;
wire g_mid;

//instanciacion de la celda inicial
celda_inicial C1 (
    .A(A), 
    .B(B),
    .f_in(f_in),
    .g_in(g_in)
);

//instanciacion de la celda tipica
celda_tipica C2(
    .z(z),
    .y(y),
    .A(A), 
    .B(B),
    .g_in(g_in),
    .f_mid(f_mid),
    .g_mid(g_mid)
);

//instanciacion de la celda final
celda_final C3(
    .f_mid(f_mid),
    .f(f)
);

endmodule