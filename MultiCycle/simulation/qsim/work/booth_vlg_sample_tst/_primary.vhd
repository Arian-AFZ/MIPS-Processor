library verilog;
use verilog.vl_types.all;
entity booth_vlg_sample_tst is
    port(
        activate        : in     vl_logic;
        clk             : in     vl_logic;
        in1             : in     vl_logic_vector(7 downto 0);
        in2             : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end booth_vlg_sample_tst;
