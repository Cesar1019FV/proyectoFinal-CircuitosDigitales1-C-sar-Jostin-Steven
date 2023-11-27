module celda_inicial(
    input [2:0] A, B,
    output f_in, g_in
);

//todas las salidas de Z
assign f_in = (~A|B);

//todas las salidas de la funcion Y
assign g_in = ((~A|B) & (A|~B));

endmodule