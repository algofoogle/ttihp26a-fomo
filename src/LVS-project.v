/*
 * Copyright (c) 2026 Anton Maurovic
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_algofoogle_fomo (
    input  wire       VGND,
    input  wire       VDPWR,    // 1.2v IHP digital power supply
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    wire ring_in;
    wire ring_out;
    wire ring_enb = uio_in[0];

    wire rhigh;
    wire rlow;

    pmosbank pmosbank_0(
        .VCC    (VDPWR),
        .sel    (ui_in[3:0]),
        .VHIGH  (rhigh)
    );

    nmosbank nmosbank_0(
        .VGND   (VGND),
        .sel    (ui_in[7:4]),
        .VLOW   (rlow)
    );

    inv30x inv30x_0(
        .VCC    (rhigh),
        // .VGND   (VGND),
        .VGND   (rlow),
        .A      (ring_in),
        .Y      (ring_out)
    );

    nand nand_0(
        .VCC    (VDPWR),
        .VGND   (VGND),
        .A      (ring_out),
        .B      (ring_enb),
        .Z      (ring_in)
    );

    digital digital_0(
        .VPWR   (VDPWR),
        .VGND   (VGND),
        .ringosc(ring_out),
        .rst_n  (rst_n),
        .divs   (uo_out[5:0])
    );

    rm4 rm4_06( .A(uo_out[6]), .B(VGND) );
    rm4 rm4_07( .A(uo_out[7]), .B(VGND) );

    rm4 rm4_08( .A(uio_out[0]), .B(VGND) );
    rm4 rm4_09( .A(uio_out[1]), .B(VGND) );
    rm4 rm4_10( .A(uio_out[2]), .B(VGND) );
    rm4 rm4_11( .A(uio_out[3]), .B(VGND) );
    rm4 rm4_12( .A(uio_out[4]), .B(VGND) );
    rm4 rm4_13( .A(uio_out[5]), .B(VGND) );
    rm4 rm4_14( .A(uio_out[6]), .B(VGND) );
    rm4 rm4_15( .A(uio_out[7]), .B(VDPWR) );

    rm4 rm4_16( .A(uio_oe[0]), .B(VGND) ); // Input: ring_enb.
    rm4 rm4_17( .A(uio_oe[1]), .B(VDPWR) );
    rm4 rm4_18( .A(uio_oe[2]), .B(VDPWR) );
    rm4 rm4_19( .A(uio_oe[3]), .B(VDPWR) );
    rm4 rm4_20( .A(uio_oe[4]), .B(VDPWR) );
    rm4 rm4_21( .A(uio_oe[5]), .B(VDPWR) );
    rm4 rm4_22( .A(uio_oe[6]), .B(VDPWR) );
    rm4 rm4_23( .A(uio_oe[7]), .B(VDPWR) ); // Output: ring_out.


endmodule
