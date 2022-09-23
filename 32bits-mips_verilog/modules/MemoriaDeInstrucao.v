module MemoriaDeInstrucao(inst,pc,clk);
input clk;
input [15:0] pc;
output [15:0] inst;
reg [15:0] inst;

reg [15:0] memdata [255:0];
wire [7:0] mem_addr = mem_access_addr [8:1]

initial
        begin
        
        for(i=0;i<256;i=i+1)
        mem[i] <=16'd0;
        

        end

always @(posedge clk)
        begin
                inst = memdata[pc];
        end

endmodule

