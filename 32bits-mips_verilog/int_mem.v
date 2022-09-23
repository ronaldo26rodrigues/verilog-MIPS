module int_mem(address,i_out);

input [31:0] address;
output reg [31:0] i_out;
reg [31:0] instrucao [255:0];


integer i;



initial begin
        $readmemb("C:/Users/Vicen/Downloads/add_addi.list", instrucao);
    end

      
always @(address)
        begin
                i_out = instrucao[address];
        end

endmodule

