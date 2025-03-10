// Generated by CIRCT firtool-1.62.1
module GCD(
  input         clock,
                reset,
  input  [15:0] io_value1,
                io_value2,
  input         io_loadingValues,
  output [15:0] io_outputGCD,
  output        io_outputValid
);

  reg [15:0] x;
  reg [15:0] y;
  always @(posedge clock) begin
    if (io_loadingValues) begin
      x <= io_value1;
      y <= io_value2;
    end
    else if (x > y)
      x <= x - y;
    else
      y <= y - x;
  end // always @(posedge)
  assign io_outputGCD = x;
  assign io_outputValid = y == 16'h0;
endmodule

