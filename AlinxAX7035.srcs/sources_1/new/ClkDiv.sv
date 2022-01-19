module ClkDiv #(
    parameter DIV_TIMES = 2)
    (
    input wire clk,
    output wire out
    );

wire [DIV_TIMES-2:0] connect;

ClkDiv2 div_start(.clk(clk), .out(connect[0]));
generate
    genvar i;
    for (i = 0; i < DIV_TIMES-2; i = i + 1)
        ClkDiv2 div_i(.clk(connect[i]), .out(connect[i+1]));
endgenerate
ClkDiv2 div_end(.clk(connect[DIV_TIMES-2]), .out(out));

endmodule
