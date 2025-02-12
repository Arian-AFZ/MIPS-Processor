library verilog;
use verilog.vl_types.all;
entity Icache_vlg_sample_tst is
    port(
        addr            : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        dataIN          : in     vl_logic_vector(15 downto 0);
        MemWrite        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Icache_vlg_sample_tst;
