module top(
    input clk,
    output [5:0] led
);
    reg [24:0] cnt = 0;

    always @(posedge clk) begin
        cnt <= cnt + 1;
    end

    assign led = ~{6{cnt[24]}};
endmodule
