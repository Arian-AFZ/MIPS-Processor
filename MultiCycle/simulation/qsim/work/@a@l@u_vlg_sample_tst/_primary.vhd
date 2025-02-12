library verilog;
use verilog.vl_types.all;
entity ALU_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        in1             : in     vl_logic_vector(7 downto 0);
        in2             : in     vl_logic_vector(7 downto 0);
        opcode          : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end ALU_vlg_sample_tst;
