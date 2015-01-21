library verilog;
use verilog.vl_types.all;
entity clock_divide is
    port(
        \in\            : in     vl_logic;
        clk             : out    vl_logic
    );
end clock_divide;
