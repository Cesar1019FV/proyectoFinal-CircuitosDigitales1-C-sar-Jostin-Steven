module celda_inicial(
    input A, B,
    output f_in
);

assign f_in = (~A & B);

endmodule