library verilog;
use verilog.vl_types.all;
entity booth1_vlg_check_tst is
    port(
        out_LSB         : in     vl_logic_vector(1 downto 0);
        product         : in     vl_logic_vector(15 downto 0);
        ready           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end booth1_vlg_check_tst;
