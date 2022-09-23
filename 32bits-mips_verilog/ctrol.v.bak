module ctrl (
    output RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch;
    output [1:0] ALUOp;
    input [31:0] instruction
    output [5:0] funct;
);
    
    always @(*) begin
        case(instruction[31:26])
            6'b000000: begin
                ALUOp = 2'b10;
                funct = instruction[5:0]
            end

            6'b000100: begin
                ALUOp = 2'b01
            end

            6'b000101: begin
                ALUOp = 2'b01
            end

            6'b100011: begin
                ALUOp = 2'b00
            end

            6'b101011: begin
                ALUOp = 2'b00
            end

            default: begin
                RegDst = 1'b0;
                ALUSrc = 1'b0;
                MemtoReg = 1'b0;
                RegWrite = 1'b0;
                MemRead = 1'b0;
                MemWrite = 1'b0;
                Branch = 1'b0;
                ALUOp = 2'b10;
            end


        endcase

        assign RegDst = (instruction[31:26] == 6'b000000);
        assign MemRead = (instr[31:26] == 6'b100011);
    	assign MemtoReg = (instr[31:26] == 6'b100011);
        assign MemWrite = (instr[31:26] == 6'b101011);

        assign ALUSrc = ((instr[31:26] == 6'b100011) || //lw
                         (instr[31:26] == 6'b101011) || //sw
                         (instr[31:26] == 6'b001101) || //ori
                         (instr[31:26] == 6'b001000)    //addi
                        );

        assign RegWrite = ((instr[31:26] == 6'b100011) || //lw
                           (instr[31:26] == 6'b001111) || //lui
                           (instr[31:26] == 6'b001101) || //ori
                           (instr[31:26] == 6'b001000) || //addi
                           (instr[31:26] == 6'b000011) || //jal
                           ((instr[31:26] == 6'b000000)) //R-type
                          );

    end


endmodule