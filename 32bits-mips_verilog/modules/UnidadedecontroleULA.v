 module UnidadedecontroledaULA( UnidadedecontroledaULA, ULAOp, Function);  
 output reg[2:0] UnidadedecontroledaULA,;  
 input [1:0] ULAOp;  
 input [3:0] Function;  
 wire [5:0] ULAControlIn;  
 assign ULAControlIn = {ULAOp,Function};  
 always @(ULAControlIn)  
 casex (ULAcontrolIn)  
  6'b11xxxx: UnidadedecontroledaULA,=3'b000;  
  6'b10xxxx: UnidadedecontroledaULA,=3'b100;  
  6'b01xxxx: UnidadedecontroledaULA,=3'b001;  
  6'b000000: UnidadedecontroledaULA,=3'b000;  
  6'b000001: UnidadedecontroledaULA,=3'b001;  
  6'b000010: UnidadedecontroledaULA,=3'b010;  
  6'b000011: UnidadedecontroledaULA,=3'b011;  
  6'b000100: UnidadedecontroledaULA,=3'b100;  
  default: UnidadedecontroledaULA,=3'b000;  
  endcase  
 endmodule  

module Control_JR( input[1:0] ula_op, 
       input [3:0] funct,
       output ControlJR
    );
assign ControlJR = ({ula_op,funct}==6'b001000) ? 1'b1 : 1'b0;
endmodule