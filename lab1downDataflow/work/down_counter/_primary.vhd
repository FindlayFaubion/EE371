library verilog;
use verilog.vl_types.all;
entity down_counter is
    port(
        rst             : in     vl_logic;
        in_clk          : in     vl_logic;
        \out\           : out    vl_logic_vector(3 downto 0)
    );
end down_counter;
