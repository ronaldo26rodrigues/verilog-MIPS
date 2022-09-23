module data_memory (
input wire [31:0] addr,          // Memory Address
input wire [31:0] write_data,    // Memory Address Contents
input wire memwrite, memread,
input wire clk,                  // All synchronous elements, including memories, should have a clock signal
output reg [31:0] read_data      // Output of Memory Address Contents
);

reg [31:0] MEMO[0:255];  // 256 words of 32-bit memory

integer i;

initial begin
  read_data <= 0;
  for (i = 0; i < 256; i = i + 1) begin
    MEMO[i] = i;
  end
end

always @(posedge clk) begin
  if (memwrite == 1'b1) begin
    MEMO[addr] <= write_data;
  end

  if (memread == 1'b1) begin
    read_data <= MEMO[addr];
  end
end

endmodule