module Secuential_Circuit(A,B,C,D,Output_1_Module1,Output_2_Module1);

input A,B,C,D;

output Output_1_Module1,Output_2_Module1;

//Implementing the functionality of module1

assign Output_1_Module1 = (~(A & B)) | ((A | B) & (C)) ;
assign Output_2_Module1 = D;


endmodule