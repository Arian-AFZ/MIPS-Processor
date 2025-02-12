library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        zero            : out    vl_logic;
        in1             : in     vl_logic_vector(7 downto 0);
        in2             : in     vl_logic_vector(7 downto 0);
        opcode          : in     vl_logic_vector(3 downto 0);
        ready           : out    vl_logic;
        clk             : in     vl_logic;
        result          : out    vl_logic_vector(7 downto 0)
    );
end ALU;
