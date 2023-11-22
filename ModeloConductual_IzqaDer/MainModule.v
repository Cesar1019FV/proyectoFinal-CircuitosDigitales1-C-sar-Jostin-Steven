module Main_Module(A,B,C,D,rst,clk,Z);

input A,B,C,D,clk.rst;

output Z;

//module instantuation of module 1
wire Output_1_Module1, Output_2_Module1;
Module1 Module1(.A(A),
                .B(B),
                .C(C),
                .D(D),
                .Output_1_Module1(),
                .Output_2_Module1());
end

//module instantuation of module 2
Module_2 Module_2(.Input_1_Module2(Output_1_Module1),
                .Input_2_Module2(Output_2_Module1),
                .Z(Z));
end 

endmodule