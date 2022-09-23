module regfile (
    input [4:0] ReadAddr1, ReadAddr2, WriteAddr,
    output reg [31:0] ReadData1, ReadData2, WriteData
    input Clock, RegWrite, Reset
);

    reg [31:0] registradores [31:0];

    initial begin
        registradores[0] = 0;
    end

    always @(ReadAddr1 or Clock) begin
        ReadData1 = registradores[ReadAddr1];
    end

    always @(ReadAddr2 or Clock) begin
        ReadData2 = registradores[ReadAddr2];
    end

    always @(posedge Clock) begin
        if (RegWrite && WriteAddr) begin
            registradores[WriteAddr] <= WriteData;
        end
    end

    always @(reset) begin
        for(i=0;i<32;i=i+1) begin
            registradores[i] = 0;
        end
    end

endmodule
