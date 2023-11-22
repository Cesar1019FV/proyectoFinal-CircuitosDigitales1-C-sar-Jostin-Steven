module Module_2(Input_1_Module2,Input_2_Module2,Z);

input A,B,C,clk.rst;

output Z;


//Implementing the functionality of module2

assign Z = ((~(Input_1_Module2 | Input_2_Module2)) & (Input_1_Module2 & Input_2_Module2));



endmodule