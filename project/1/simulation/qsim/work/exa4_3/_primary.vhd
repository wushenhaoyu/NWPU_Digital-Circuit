library verilog;
use verilog.vl_types.all;
entity exa4_3 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        dout            : out    vl_logic_vector(3 downto 0);
        cout            : out    vl_logic
    );
end exa4_3;
