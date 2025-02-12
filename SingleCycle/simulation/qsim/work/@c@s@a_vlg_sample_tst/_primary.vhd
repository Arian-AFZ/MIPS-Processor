library verilog;
use verilog.vl_types.all;
entity CSA_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        cin             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end CSA_vlg_sample_tst;
