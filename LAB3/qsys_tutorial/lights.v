module lights(clk, reset, switches, leds);
input clk;
input [0:0] reset;
input [7:0] switches;
output wire [7:0] leds;


    nios_system u0 (
        .clk_clk         (clk),         //      clk.clk
        .reset_reset_n   (reset),   //    reset.reset_n
        .switches_export (switches), // switches.export
        .leds_export     (leds)      //     leds.export
    );


endmodule 