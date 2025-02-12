library verilog;
use verilog.vl_types.all;
entity booth1 is
    port(
        ready           : out    vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        out_LSB         : out    vl_logic_vector(1 downto 0);
        in1             : in     vl_logic_vector(7 downto 0);
        in2             : in     vl_logic_vector(7 downto 0);
        product         : out    vl_logic_vector(15 downto 0)
    );
end booth1;
