`default_nettype none

module top(
    // Clock
    input wire clk,

    // switch
    input wire rst,
    input wire [3:0] button,

    // leds
    output wire [3:0] led,

    // Segments
    output wire [7:0] segments,
    output wire [5:0] seg_sel
);

assign led = button;

ClkDiv #(25) clk_div(
    .clk(clk)
);

assign seg_sel[0] = clk_div.out;

assign segments = 'h0;

endmodule
