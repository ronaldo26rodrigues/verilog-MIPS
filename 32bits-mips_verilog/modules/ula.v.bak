//fpga4student.com: FPga projects, Verilog projects, VHDL projects
// Verilog code for ALU
module ula(       
      input          [31:0]     a,          //src1  
      input          [31:0]     b,          //src2  
      input          [2:0]     ula_control,     //function sel  
      output     reg     [31:0]     result,          //result       
      output zero  
   );  
 always @(*)  //fpga4student.com: FPga projects, Verilog projects, VHDL projects
 begin   
      case(ula_control)  
      3'b000: result = a + b; // add  
      3'b001: result = a - b; // sub  
      3'b010: result = a & b; // and  
      3'b011: result = a | b; // or  
      3'b100: begin if (a<b) result = 32'd1;  
                     else result = 132'd0;  
                     end  
      default:result = a + b; // add  
      endcase  
 end  
 assign zero = (result==32'd0) ? 1'b1: 1'b0;  
 endmodule  