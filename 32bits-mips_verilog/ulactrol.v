module ulactrol(
        input wire [5:0] funct,
        input wire [2:0] ALUOp,
        output JR, shamt,
        output reg [3:0] OP);

    reg [3:0] operational;

    always @(*) begin
        case(funct)
            6'b100000: operational = 4'b0000; 
            
            6'b100010: operational = 4'b0001; 
            
            6'b100100: operational = 4'b0011; 
            
            6'b100111: operational = 4'b0100; 
            
            6'b100101: operational = 4'b0101; 
           
            6'b100110: operational = 4'b0110; 
            
            6'b000000: operational = 4'b0111; 

            6'b000100: operational = 4'b1000; 
            
            6'b000010:  operational = 4'b1001; 

            6'b000110: operational = 4'b1010; 
                  
            6'b000011: operational = 4'b1100; 

            6'b000111: operational = 4'b1101;

           
            6'b101010: operational = 4'b1110; 

            
            6'b101011: operational = 4'b1111; 
            
            default: operational = 4'b0000;
        endcase
    end

    always @(*) begin
        case(ALUOp)
            3'b000: OP = 4'b0000; 
            3'b001: OP = 4'b0001; 
            3'b010: OP = 4'b0011; 
            3'b011: OP = 4'b0101; 
            3'b100: OP = 4'b0110; 
            3'b110: OP = operational; 
            3'b101: OP = 4'b1110; 
            3'b111: OP = 4'b1111; 
            default: OP = 4'b0000; 
        endcase
    end

    assign JR = (ALUOp == 3'b110) ? ((funct == 6'b001000) ? 1'b1 : 1'b0) : 1'b0;
    assign shamt = (ALUOp == 3'b110) ? ((funct == 6'b000000 || funct == 6'b000010 || funct == 6'b000011) ? 1'b1 : 1'b0) : 1'b0;

endmodule
