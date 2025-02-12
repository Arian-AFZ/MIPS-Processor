library verilog;
use verilog.vl_types.all;
entity booth is
    port(
        ready           : out    vl_logic;
        clk             : in     vl_logic;
        activate        : in     vl_logic;
        \out\           : out    vl_logic_vector(7 downto 0);
        in1             : in     vl_logic_vector(7 downto 0);
        in2             : in     vl_logic_vector(7 downto 0)
    );
end booth;
