
module ula(


     	input		[3:0]		OP, 
		input		[4:0] 		shamt,
		input		[31:0]		In2,
		input		[31:0]		In1,
		output reg	[31:0]		result,
		output reg				Zero_flag
		
		
    );
	 reg signed [31:0]signed_In2, signed_In1;
	 
	 // Instruções tipo R
	 

    always @(*)
    begin
	 
	 signed_In1 = In1;
	 signed_In2 = In2;
	 
	 
        case(OP)
				4'b0000: result <= (In1 + In2); 
			
            4'b0001: result <= (In1 - In2); 
				
            4'b0011: result <= (In1 & In2); 
            
				4'b0100: result <= ~(In1 | In2); 
            
				4'b0101: result <= (In1 | In2); 
            
				4'b0110: result <= (In1 ^ In2); 
            
				4'b0111: result <= (In2 << (In1)); 
            
				4'b1000: result <= (In1 << (In2)); 
            
				4'b1001: result <= (In2 >> (In1)); 
            
				4'b1010: result <= (In1 >> (In2)); 
            
				4'b1110: result <=  ((signed_In1 < signed_In2) ? 32'b1 : 32'b0); 
            
				4'b1111: result <= ((In1 < In2) ? 32'b1 : 32'b0) ; 

            default: result <= 32'b0;
        endcase
    end
 
	 

endmodule




