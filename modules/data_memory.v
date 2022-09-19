
 module data_memory  
 (  
 
 
 
      
      input      [31:0]               	endereço,  
		input      [31:0]               	write_data, 
		input 	  [5:0]                 opcode,
		
		//input                        		clk,  
      input                         	sinal_mem_write,  
      input 									sinal_mem_read,  		
		
      output  reg[31:0]                read_data  
 );  
 
 
	
	reg [31:0] data_mem [255:0];
	
	initial begin
		$readmemb("data.mem", data_mem);
	end
	
	always @(endereço) begin
		if(sinal_mem_write) begin
			if(opcode == 6'h28) begin
				data_mem[endereço][7:0] = write_data[7:0];
			end
			else if(opcode == 6'h29) begin
				data_mem[endereço][15:0] = write_data[15:0];
			end
			else begin
				data_mem[endereço] = write_data;
			end
			// write to file
			$writememb("data.mem", data_mem);
		end
	end
	
	always @(endereço) begin
		if(sinal_mem_read) begin
			read_data = data_mem[endereço];
		end
	end
	
	
	
endmodule