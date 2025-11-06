module top_fifo_pll(
    input wire clk_in,
    input wire rst,
    input wire wr_en,
    input wire rd_en,
    input wire [7:0] din,
    output wire [7:0] dout,
    output wire full,
    output wire empty,
    output wire [8:0] data_count
);

    wire clk_16mhz;
    wire locked;
    
    // Instancia del PLL
    pll_16mhz pll_inst (
        .clk_in1(clk_in),
        .clk_out1(clk_16mhz),
        .reset(rst),
        .locked(locked)
    );
    
    // Instancia de la FIFO
    fifo_512x8 fifo_inst (
        .clk(clk_16mhz),
        .srst(rst | ~locked),
        .din(din),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .dout(dout),
        .full(full),
        .empty(empty),
        .data_count(data_count)
    );

endmodule