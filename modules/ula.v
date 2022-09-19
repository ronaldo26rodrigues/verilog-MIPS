
module ula(       
      input          [31:0]     a,          
      input          [31:0]     b,          
      input          [3:0]     ula_control,      
      output     reg     [31:0]     result,              
      output zero  
   );  
 always @(*)  
 begin   
      case(ula_control)  
      3'b000: result = a + b;  
      3'b001: result = a - b;  
      3'b010: result = a & b;  
      3'b011: result = a | b; 
      3'b100: begin if (a<b) result = 32'd1;  
                     else result = 132'd0;  
                     end  
      default:result = a + b; 
      endcase  
 end  
 assign zero = (result==32'd0) ? 1'b1: 1'b0;  
 endmodule  
 
 
 
