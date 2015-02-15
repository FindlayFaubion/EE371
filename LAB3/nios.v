  module nios(leds, reset, clock);
  input clock;
  input reset;
  output wire [7:0] leds;
  
    first_nios2_system u0 (
        .clk_clk(clock)                            ,                            //                         clk.clk
        .reset_reset_n(reset)                      ,                      //                       reset.reset_n
        .led_pio_external_connection_export(leds)   // led_pio_external_connection.export
    );

	 
	 endmodule 