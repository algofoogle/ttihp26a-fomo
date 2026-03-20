# DEF template(s) for Tiny Tapeout

*   [Generating the .mag template](#generating-the-mag-template)
*   [TTIHP26a digital 1x1 template DEF](#ttihp26a-digital-1x1-template-def)
*   [Magic template prep script](#magic-template-prep-script)

## Generating the .mag template

When the correct PDK environment is loaded (e.g. [`source env-ihp.sh`](../env-ihp.sh) or at least run `pdk ihp`), you can run:

```bash
magicpdk -noconsole -dnull magic_init_project.tcl
```


## TTIHP26a digital 1x1 template DEF

[`tt_block_1x1_pgvdd.def`](./tt_block_1x1_pgvdd.def) is the digital-only TTIHP26a 1x1 template and was obtained from [here](https://github.com/TinyTapeout/tt-support-tools/blob/main/tech/ihp-sg13g2/def/tt_block_1x1_pgvdd.def).

The DEF comprises:

*   Module name:
    ```tcl
    DESIGN tt_um_template ;
    ```
*   Dimensions (202.08 &times; 154.98&micro;m):
    ```tcl
    DIEAREA ( 0 0 ) ( 202080 154980 ) ;
    ```
*   "Rows", which I assume are sites for standard cells, and alternate with `N`orth and `F`lipped-`S`outh orientations:
    ```tcl
    ROW ROW_0 CoreSite 2880 3780 N DO 409 BY 1 STEP 480 0 ;
    ROW ROW_1 CoreSite 2880 7560 FS DO 409 BY 1 STEP 480 0 ;
    ROW ROW_2 CoreSite 2880 11340 N DO 409 BY 1 STEP 480 0 ;
    ROW ROW_3 CoreSite 2880 15120 FS DO 409 BY 1 STEP 480 0 ;
    ...
    ROW ROW_36 CoreSite 2880 139860 N DO 409 BY 1 STEP 480 0 ;
    ROW ROW_37 CoreSite 2880 143640 FS DO 409 BY 1 STEP 480 0 ;
    ROW ROW_38 CoreSite 2880 147420 N DO 409 BY 1 STEP 480 0 ;
    ```
*   "Tracks" to define routing parameters per layer, e.g. Metal1 has X sites starting at offset 480nm, then 420 of them (`DO 420`), stepped at 480nm pitch (thus `480+(420*480)=202080`). Interesting that Y pitch is different from X:
    ```tcl
    TRACKS X 480 DO 420 STEP 480 LAYER Metal1 ;
    TRACKS Y 420 DO 368 STEP 420 LAYER Metal1 ;
    TRACKS X 480 DO 420 STEP 480 LAYER Metal2 ;
    TRACKS Y 420 DO 368 STEP 420 LAYER Metal2 ;
    TRACKS X 480 DO 420 STEP 480 LAYER Metal3 ;
    TRACKS Y 420 DO 368 STEP 420 LAYER Metal3 ;
    TRACKS X 480 DO 420 STEP 480 LAYER Metal4 ;
    TRACKS Y 420 DO 368 STEP 420 LAYER Metal4 ;
    TRACKS X 480 DO 420 STEP 480 LAYER Metal5 ;
    TRACKS Y 420 DO 368 STEP 420 LAYER Metal5 ;
    TRACKS X 1640 DO 88 STEP 2280 LAYER TopMetal1 ;
    TRACKS Y 1640 DO 67 STEP 2280 LAYER TopMetal1 ;
    TRACKS X 2000 DO 50 STEP 4000 LAYER TopMetal2 ;
    TRACKS Y 2000 DO 38 STEP 4000 LAYER TopMetal2 ;
    ```
*   43 pins (8&times;ui, 8&times;uo, 24&times;uio, ena, clk, rst_n), all on Metal4, expressed as ports centred on each placement (e.g. `(187.2,154.48)` origin with a rect of `( -150 -500 ) ( 150 500 )` so 0.3 &times; 1.0&micro;m):
    ```tcl
    PINS 43 ;
        - clk + NET clk + DIRECTION INPUT + USE SIGNAL
          + PORT
            + LAYER Metal4 ( -150 -500 ) ( 150 500 )
            + PLACED ( 187200 154480 ) N ;
        - ena + NET ena + DIRECTION INPUT + USE SIGNAL
          + PORT
            + LAYER Metal4 ( -150 -500 ) ( 150 500 )
            + PLACED ( 191040 154480 ) N ;
        - rst_n + NET rst_n + DIRECTION INPUT + USE SIGNAL
          + PORT
            + LAYER Metal4 ( -150 -500 ) ( 150 500 )
            + PLACED ( 183360 154480 ) N ;
        - ui_in[0] + NET ui_in[0] + DIRECTION INPUT + USE SIGNAL
          + PORT
            + LAYER Metal4 ( -150 -500 ) ( 150 500 )
            + PLACED ( 179520 154480 ) N ;
    ...
        - uo_out[7] + NET uo_out[7] + DIRECTION OUTPUT + USE SIGNAL
          + PORT
            + LAYER Metal4 ( -150 -500 ) ( 150 500 )
            + PLACED ( 91200 154480 ) N ;
    END PINS
    ```
*   Nets are defined with mapping to pins:
    ```tcl
    NETS 43 ;
        - clk ( PIN clk ) + USE SIGNAL ;
        - ena ( PIN ena ) + USE SIGNAL ;
        - rst_n ( PIN rst_n ) + USE SIGNAL ;
        - ui_in[0] ( PIN ui_in[0] ) + USE SIGNAL ;
        - ui_in[1] ( PIN ui_in[1] ) + USE SIGNAL ;
    ...
        - uo_out[6] ( PIN uo_out[6] ) + USE SIGNAL ;
        - uo_out[7] ( PIN uo_out[7] ) + USE SIGNAL ;
    END NETS
    ```
*   Definition that VGND and VPWR have ground and power functions respectively, *when used* (though they are not placed in this file by default):
    ```tcl
    SPECIALNETS 2 ;
        - VGND + USE GROUND ;
        - VPWR + USE POWER ;
    END SPECIALNETS
    ```
    NOTE: `VPWR` [might be wrong](https://discord.com/channels/1009193568256135208/1442605676508741662/1484359712760791140) in this case, but perhaps irrelevant?

Compare all this with the [analog 1x2 template](https://github.com/TinyTapeout/tt-support-tools/blob/main/tech/ihp-sg13g2/def/analog/tt_analog_1x2.def). It just has extra height (so extra rows/tracks) and the extra 8 `ua[...]` pins on TopMetal1 with `DIRECTION INOUT`.


## Magic template prep script

[`magic_init_project.tcl`](./magic_init_project.tcl) is a modified version of the one from [here](https://github.com/TinyTapeout/tt-support-tools/blob/main/tech/ihp-sg13g2/def/analog/magic_init_project.tcl) that uses the above DEF to make a `.mag` file (ready for a custom layout that is compliant with the TT 1x1 digital tile requirements).

The resulting `tt_um_analog_example.mag` file that it creates has these qualities:

*   There are 2 power straps that get created (with port labels) on Metal6 (is this actually TopMetal1?):
    ```tcl
    # Power stripes: NET name, x position. You can add additional power stripes for each net, as needed.
    # Min spacing: 1.64um.
    set POWER_STRIPES {
        VDPWR 1um
        VGND  6um
    }
    ...
        paint met6
        label $name FreeSans 0.25u -met6
        port make
        port use [expr {$name eq "VGND" ? "ground" : "power"}]
        port class bidirectional
        port connections n s e w
    ...
    ```
    NOTE: While the DEF defines a SPECIALNET called "`VPWR`" this might be irrelevant as the actual net name (and I guess port name?) expected by the TT infra seems to be the above "`VDPWR`" instead.
*   Power straps are 2.4&micro;m wide:
    ```tcl
    set POWER_STRIPE_WIDTH 2.4um  ;# The minimum width is 2.1um
    ```
*   Power straps have vertical margins of 5&micro;m at the top and ~6&micro;m at the bottom:
    ```tcl
    set POWER_STRIPE_VTOP   5um
    set POWER_STRIPE_VBOT   149um                   ;# Approx 6um above bottom of DIEAREA
    ```
*   Template's `tt_um_template` name gets changed to `tt_um_algofoogle_1x1_layout`:
    ```tcl
    set TOP_LEVEL_CELL      tt_um_algofoogle_1x1_layout
    ...
    cellname rename tt_um_template $TOP_LEVEL_CELL
    ```

GDS and LEF versions are generated in subdirectories also (but why is the GDS needed?)

```tcl
save ${TOP_LEVEL_CELL}.mag
file mkdir gds
gds write gds/${TOP_LEVEL_CELL}.gds
file mkdir lef
lef write lef/${TOP_LEVEL_CELL}.lef -hide -pinonly
```
