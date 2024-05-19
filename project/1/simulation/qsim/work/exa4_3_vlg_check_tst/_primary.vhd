library verilog;
use verilog.vl_types.all;
entity exa4_3_vlg_check_tst is
    port(
        cout            : in     vl_logic;
        dout            : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end exa4_3_vlg_check_tst;
