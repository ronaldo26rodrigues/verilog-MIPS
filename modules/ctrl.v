module ctrl (
    output RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, BNE, BEQ, JAL, JR, JMP;
    output reg [1:0] ALUOp;
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
                BEQ = 1'b0;
                BNE = 1'b0;
                JMP = 1'b0;
                JAL = 1'b0;
                JR = 1'b0;
            end


        endcase

        assign RegDst = (instruction[31:26] == 6'b000000);
        assign MemRead = (instruction[31:26] == 6'b100011);
    	assign MemtoReg = (instruction[31:26] == 6'b100011);
        assign MemWrite = (instruction[31:26] == 6'b101011);
        assign BEQ = (instruction[31:26] == 6'b000100);
        assign BNE = (instruction[31:26] == 6'b000101);
        assign JMP = (instruction[31:27] == 6'b00001); 
        assign JAL = (instruction[31:26] == 6'b000011);
        assign JR = ((instruction[31:26] == 6'b000000) && (instruction[5:0] == 6'b001000));


        assign ALUSrc = ((instruction[31:26] == 6'b100011) || //lw
                         (instruction[31:26] == 6'b101011) || //sw
                         (instruction[31:26] == 6'b001101) || //ori
                         (instruction[31:26] == 6'b001000)    //addi
                        );

        assign RegWrite = ((instruction[31:26] == 6'b100011) || //lw
                           (instruction[31:26] == 6'b001111) || //lui
                           (instruction[31:26] == 6'b001101) || //ori
                           (instruction[31:26] == 6'b001000) || //addi
                           (instruction[31:26] == 6'b000011) || //jal
                           ((instruction[31:26] == 6'b000000)) //R-type
                          );

    end


endmodule