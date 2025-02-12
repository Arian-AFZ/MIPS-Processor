library verilog;
use verilog.vl_types.all;
entity SingleCycle is
    port(
        RegWritetest    : out    vl_logic;
        IMout           : out    vl_logic_vector(15 downto 0);
        clk             : in     vl_logic;
        pc              : out    vl_logic_vector(7 downto 0);
        ALUcontroltest  : out    vl_logic_vector(3 downto 0);
        ALUin1test      : out    vl_logic_vector(7 downto 0);
        ALUin2test      : out    vl_logic_vector(7 downto 0);
        ALUOptest       : out    vl_logic_vector(1 downto 0);
        ALUtest         : out    vl_logic_vector(7 downto 0);
        RFdataINtest    : out    vl_logic_vector(7 downto 0)
    );
end SingleCycle;
