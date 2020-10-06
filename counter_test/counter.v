module top (
    input  clk,
    input rx,
    output tx,
    output [3:0] led
);

    localparam BITS = 4;
    localparam LOG2DELAY = 22;

    wire bufg;
    BUFG bufgctrl(.I(clk), .O(bufg));

    reg [BITS+LOG2DELAY-1:0] counter = 0;

//    always @(posedge bufg) begin
    always @(posedge clk) begin
        counter <= counter + 1;
    end

//    assign led[3:0] = counter >> LOG2DELAY;
    assign led[3:0] = counter[25:22];
    assign tx = rx;
endmodule
