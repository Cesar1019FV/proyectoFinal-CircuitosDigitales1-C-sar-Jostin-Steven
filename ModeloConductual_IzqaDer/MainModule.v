module system (
    input A, B,
    input x, y,
    output f
);

//conexiones generadas para el cableado de cada celda
wire f_in;
wire f_mid;
wire g_mid;

//instanciacion de la celda inicial
celda_inicial C0 (
    .A(A), 
    .B(B),
    .f_in(f_in)
);

//instanciacion de la celda tipica
celda_tipica C1(
    .x(x),
    .y(y),
    .A(A), 
    .B(B),
    .f_in(f_in),
    .f_mid(f_mid),
    .g_mid(g_mid)
);

//instanciacion de la celda final
celda_final C2(
    .g_mid(g_mid),
    .f(f)
);

endmodule