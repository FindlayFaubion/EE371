library verilog;
use verilog.vl_types.all;
entity counter_ripple_4 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        \out\           : out    vl_logic_vector(3 downto 0)
    );
end counter_ripple_4;
