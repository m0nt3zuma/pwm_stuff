`timescale 1ns / 1ps

module top(
    input top_clk,
    input [7:0] top_freq,
    output [3:0] led_top
    );

    
  
    
pwm pwm0(.clk(top_clk), .freq(top_freq), .duty(8'd20), .led(led_top[0]));
pwm pwm1(.clk(top_clk), .freq(top_freq), .duty(8'd40), .led(led_top[1]));
pwm pwm2(.clk(top_clk), .freq(top_freq), .duty(8'd60), .led(led_top[2]));
pwm pwm3(.clk(top_clk), .freq(top_freq), .duty(8'd80), .led(led_top[3]));
    
endmodule
