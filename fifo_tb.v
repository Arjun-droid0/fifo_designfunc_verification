
`timescale 1ns/1ps

module fifo_tb;

    reg clk, rst, wr_en, rd_en;
    reg [7:0] din;

    wire [7:0] dout;
    wire full, empty;

    fifo dut (
        .clk(clk),
        .rst(rst),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .din(din),
        .dout(dout),
        .full(full),
        .empty(empty)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        wr_en = 0;
        rd_en = 0;
        din = 0;

        // Reset FIFO
        repeat (2) @(negedge clk);
        rst = 0;

        // Write first value
        @(negedge clk);
        wr_en = 1;
        din = 8'd25;

        // Write second value
        @(negedge clk);
        din = 8'd50;

        // Stop writing
        @(negedge clk);
        wr_en = 0;

        // Read first value
        rd_en = 1;
        @(posedge clk);
        #1;
        $display("First output: %0d", dout);

        // Read second value
        @(posedge clk);
        #1;
        $display("Second output: %0d", dout);

        @(negedge clk);
        rd_en = 0;

        #10;
        $finish;
    end

endmodule
