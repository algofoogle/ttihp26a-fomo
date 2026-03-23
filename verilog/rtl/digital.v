`default_nettype none

module digital(
    input ringosc,
    input rst_n,
    output [5:0] divs
);

    reg [7:0] counter;

    always @(posedge ringosc) begin
        if (~rst_n) begin
            counter <= 0;
        end else begin
            counter <= counter + 1;
        end
    end

    assign divs = counter[7:2];

endmodule
