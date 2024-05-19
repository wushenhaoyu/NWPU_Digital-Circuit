library verilog;
use verilog.vl_types.all;
entity exa4_2_vlg_check_tst is
    port(
        dis_out         : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end exa4_2_vlg_check_tst;
