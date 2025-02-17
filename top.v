module top (
    input up_down,
    output [6:0] seg
  );

  wire clk;
  wire [3:0] count;

 pll my_pll (
        .refclk(refclk),
        .outclk_0(clk)
      );

  simple_counter my_counter (
                   .clk(clk),
                   .count(count),
                   .up_down(up_down)
                 );

  // Instantiate 7-Segment Decoder
  seven_seg_decoder my_decoder (
                      .binary_input(count),
                      .seg(seg)
                    );

  assign seg = 4'b1110;

endmodule
