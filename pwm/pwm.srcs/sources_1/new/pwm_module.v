`timescale 1ns / 1ps

module pwm(
    input clk,
    input [7:0] freq,
    input [7:0] duty,
    output led
    );
    
reg [7:0] counter = 0;

always@(posedge clk) begin
    if (counter < freq) counter <= counter + 1;
    else counter <= 0;
end    

assign led = (counter < duty) ? 1:0;

endmodule
