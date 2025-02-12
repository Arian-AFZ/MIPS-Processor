library verilog;
use verilog.vl_types.all;
entity MultiCycleDebug_vlg_sample_tst is
    port(
        clk1            : in     vl_logic;
        clk2            : in     vl_logic;
        clk3            : in     vl_logic;
        clk4            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MultiCycleDebug_vlg_sample_tst;
