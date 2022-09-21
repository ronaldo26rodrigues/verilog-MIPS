//32 bit sayılarla Arithmetic işlemler yapan modül. 
//Tüm instructionların yapması gerekenler burada halledildi. 
module alu(
          input		[3:0]	ctl,
		input		[31:0]	a,
		input		[31:0]	b,
		output reg	[31:0]	saida,
		output				zero);
    );
    reg [7:0] resultado;
    wire [8:0] tmp;
    assign saida = resultado; 
    assign tmp = {1'b0,A} + {1'b0,B};
    assign zero = tmp[8]; 
    always @(*)
    begin
        case(ALU_Sel)
        4'b0000: // Addition
           resultado = A + B ; 
        4'b0001: // Subtraction
           resultado = A - B ;
        4'b0010: // Multiplication
           resultado = A * B;
        4'b0011: // Division
           resultado = A/B;
        4'b0100: // Logical shift left
           resultado = A<<1;
         4'b0101: // Logical shift right
           resultado = A>>1;
          4'b1000: //  Logical and 
           resultado = A & B;
          4'b1001: //  Logical or
           resultado = A | B;
          4'b1010: //  Logical xor 
           resultado = A ^ B;
          4'b1011: //  Logical nor
           resultado = ~(A | B);
          4'b1100: // Logical nand 
           resultado = ~(A & B);
          4'b1101: // Logical xnor
           resultado = ~(A ^ B);
        endcase
    end

endmodule




