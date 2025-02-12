library verilog;
use verilog.vl_types.all;
entity booth1_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        in1             : in     vl_logic_vector(7 downto 0);
        in2             : in     vl_logic_vector(7 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end booth1_vlg_sample_tst;
