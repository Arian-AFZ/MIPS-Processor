library verilog;
use verilog.vl_types.all;
entity ALUtest is
    port(
        ready           : out    vl_logic;
        clk             : in     vl_logic;
        in1             : in     vl_logic_vector(7 downto 0);
        in2             : in     vl_logic_vector(7 downto 0);
        opcode          : in     vl_logic_vector(3 downto 0);
        result          : out    vl_logic_vector(7 downto 0)
    );
end ALUtest;
