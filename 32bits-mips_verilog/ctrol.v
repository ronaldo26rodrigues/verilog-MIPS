module ctrol (OPCODE, MemRead, RegWrite, RegDst, ALUSrc, Branch, Brchne, MemWrite, MemtoReg, Jump, Jal, ALUOp);

	input wire [5:0] OPCODE;
	output reg [1:0] RegDst, ALUSrc, MemtoReg, MemRead, RegWrite, Branch, Brchne, MemWrite, Jump, Jal;
	output reg [2:0] ALUOp;
	
	always @(*) begin
		case(OPCODE)
			0: begin
                RegWrite <= 1'b1;
                RegDst <= 2'b01;
                ALUSrc <= 2'b00;
                Branch <= 1'b0;
                Brchne <= 1'b0;
                MemWrite <= 1'b0;
                MemtoReg <= 2'b00;
                Jump <= 1'b0;
                Jal <= 1'b0;
                ALUOp <= 3'b110;
                MemRead <= 1'b0;
			end
			35: begin
                RegWrite <= 1'b1;
                RegDst <= 2'b00;
                ALUSrc <= 2'b01;
                Branch <= 1'b0;
                Brchne <= 1'b0;
                MemWrite <= 1'b0;
                MemtoReg <= 2'b01;
                Jump <= 1'b0;
                Jal <= 1'b0;
                ALUOp <= 3'b000;
                MemRead <= 1'b1;
			end
			43: begin
                RegWrite <= 1'b0;
                RegDst <= 2'bxx;
                ALUSrc <= 2'b01;
                Branch <= 1'b0;
                Brchne <= 1'b0;
                MemWrite <= 1'b1;
                MemtoReg <= 2'bxx;
                Jump <= 1'b0;
                Jal <= 1'b0;
                ALUOp <= 3'b000;
                MemRead <= 1'b0;
			end
			4: begin
                RegWrite <= 1'b0;
                RegDst <= 2'bxx;
                ALUSrc <= 2'b00;
                Branch <= 1'b1;
                Brchne <= 1'b0;
                MemWrite <= 1'b0;
                MemtoReg <= 2'bxx;
                Jump <= 1'b0;
                Jal <= 1'b0;
                ALUOp <= 3'b001;
                MemRead <= 1'b0;
			end
            5: begin
                RegWrite <= 1'b0;
                RegDst <= 2'bxx;
                ALUSrc <= 2'b00;
                Branch <= 1'b0;
                Brchne <= 1'b1;
                MemWrite <= 1'b0;
                MemtoReg <= 2'bxx;
                Jump <= 1'b0;
                Jal <= 1'b0;
                ALUOp <= 3'b001;
                MemRead <= 1'b0;
			end
            8: begin
                RegWrite <= 1'b1;
                RegDst <= 2'b00;
                ALUSrc <= 2'b01;
                Branch <= 1'b0;
                Brchne <= 1'b0;
                MemWrite <= 1'b0;
                MemtoReg <= 2'b00;
                Jump <= 1'b0;
                Jal <= 1'b0;
                ALUOp <= 3'b000;
                MemRead <= 1'b0;
			end
            2: begin
                RegWrite <= 1'b0;;
                RegDst <= 2'bxx;
                ALUSrc <= 2'bxx;
                Branch <= 1'bx;
                Brchne <= 1'bx;
                MemWrite <= 1'b0;
                MemtoReg <= 2'bxx;
                Jump <= 1'b1;
                Jal <= 1'b0;
                ALUOp <= 3'bxxx;
                MemRead <= 1'b0;
			end
            3: begin
                RegWrite <= 1'b1;
                RegDst <= 2'b10;
                ALUSrc <= 2'bxx;
                Branch <= 1'bx;
                Brchne <= 1'bx;
                MemWrite <= 1'b0;
                MemtoReg <= 2'bxx;
                Jump <= 1'b1;
                Jal <= 1'b1;
                ALUOp <= 3'bxxx;
                MemRead <= 1'b0;
			end
            12: begin
                RegWrite <= 1'b1;
                RegDst <= 2'b00;
                ALUSrc <= 2'b10;
                Branch <= 1'b0;
                Brchne <= 1'b0;
                MemWrite <= 1'b0;
                MemtoReg <= 2'b00;
                Jump <= 1'b0;
                Jal <= 1'b0;
                ALUOp <= 3'b010;
                MemRead <= 1'b0;
			end
            13: begin
                RegWrite <= 1'b1;
                RegDst <= 2'b00;
                ALUSrc <= 2'b10;
                Branch <= 1'b0;
                Brchne <= 1'b0;
                MemWrite <= 1'b0;
                MemtoReg <= 2'b00;
                Jump <= 1'b0;
                Jal <= 1'b0;
                ALUOp <= 3'b011;
                MemRead <= 1'b0;
			end
            14: begin
                RegWrite <= 1'b1;
                RegDst <= 2'b00;
                ALUSrc <= 2'b10;
                Branch <= 1'b0;
                Brchne <= 1'b0;
                MemWrite <= 1'b0;
                MemtoReg <= 2'b00;
                Jump <= 1'b0;
                Jal <= 1'b0;
                ALUOp <= 3'b100;
                MemRead <= 1'b0;
			end
            10: begin
                RegWrite <= 1'b1;
                RegDst <= 2'b00;
                ALUSrc <= 2'b01;
                Branch <= 1'b0;
                Brchne <= 1'b0;
                MemWrite <= 1'b0;
                MemtoReg <= 2'b00;
                Jump <= 1'b0;
                Jal <= 1'b0;
                ALUOp <= 3'b101;
                MemRead <= 1'b0;
			end
            11: begin
                RegWrite <= 1'b1;
                RegDst <= 2'b00;
                ALUSrc <= 2'b01;
                Branch <= 1'b0;
                Brchne <= 1'b0;
                MemWrite <= 1'b0;
                MemtoReg <= 2'b00;
                Jump <= 1'b0;
                Jal <= 1'b0;
                ALUOp <= 3'b101;
                MemRead <= 1'b0;
			end
            15: begin
                RegWrite <= 1'b1;
                RegDst <= 2'b00;
                ALUSrc <= 2'b11;
                Branch <= 1'b0;
                Brchne <= 1'b0;
                MemWrite <= 1'b0;
                MemtoReg <= 2'b00;
                Jump <= 1'b0;
                Jal <= 1'b0;
                ALUOp <= 3'b000;
                MemRead <= 1'b0;
			end
		endcase
	end

endmodule