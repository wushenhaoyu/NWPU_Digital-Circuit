library verilog;
use verilog.vl_types.all;
entity v5_1 is
    port(
        clock           : in     vl_logic;
        Reset_n         : in     vl_logic;
        q               : out    vl_logic_vector(7 downto 0)
    );
end v5_1;
