`timescale 1ns / 1ps

module testbench;

reg top_clk = 0;

reg [7:0] top_freq;

initial begin
top_freq = 8'd100; #1000;
top_freq = 8'd80;
end

wire [3:0] led;

top UUT(top_clk, top_freq, led);

always #5 top_clk = ~top_clk;
endmodule
