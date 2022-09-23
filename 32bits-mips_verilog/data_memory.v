module data_memory (

	input  [31:0] Address ,          
	input  [31:0] WriteData ,    
	input  MemWrite,
	input  MemRead,
	output  [31:0] ReadData       
	);

	reg [31:0] MEMORIA[0:255];  

	integer i;

	initial begin
	
		for (i = 0; i < 256; i = i + 1) begin
			MEMORIA[i] = 0;
		end
	end

	
	assign ReadData = (MemRead == 0) ? 0 : MEMORIA[Address];
	
	
	always @(*) begin

		if (MemWrite == 1'b1) begin
			MEMORIA[Address] <= WriteData ;
		end

  

		
	end

endmodule