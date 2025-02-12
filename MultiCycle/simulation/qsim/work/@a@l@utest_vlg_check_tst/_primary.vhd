library verilog;
use verilog.vl_types.all;
entity ALUtest_vlg_check_tst is
    port(
        ready           : in     vl_logic;
        result          : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end ALUtest_vlg_check_tst;
