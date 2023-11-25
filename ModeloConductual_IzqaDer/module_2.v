module celda_tipica(
    input x, y, A, B, f_in,
    output f_mid, g_mid
);

assign f_mid = ((x)|((~x & y) & A));
    
assign g_mid = (y|(~x & f_in));

endmodule