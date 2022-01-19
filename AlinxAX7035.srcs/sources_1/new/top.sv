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
    output wire [7:0] segs,
    output wire [5:0] seg_sel
);

assign led = button;
wire [3:0] button_r;
assign button_r = ~button;

ClkDiv #(25) clk_div(
    .clk(clk)
);

reg [5:0] seg_sel_r = ~6'h1;
assign seg_sel = seg_sel_r;
always_ff @(posedge clk_div.out)
    seg_sel_r = {seg_sel_r[4:0], seg_sel_r[5]};

Segments segments(
    .number({<<{button_r}}),
    .segments(segs)
);

endmodule
