library verilog;
use verilog.vl_types.all;
entity SingleCycleDebug is
    port(
        RegWritetest    : out    vl_logic;
        IMout           : out    vl_logic_vector(15 downto 0);
        clk2            : in     vl_logic;
        pc              : out    vl_logic_vector(7 downto 0);
        clk1            : in     vl_logic;
        Jump            : out    vl_logic;
        branch          : out    vl_logic;
        zero            : out    vl_logic;
        clk3            : in     vl_logic;
        clk4            : in     vl_logic;
        ALUcontroltest  : out    vl_logic_vector(3 downto 0);
        ALUin1test      : out    vl_logic_vector(7 downto 0);
        ALUin2test      : out    vl_logic_vector(7 downto 0);
        ALUOptest       : out    vl_logic_vector(1 downto 0);
        ALUtest         : out    vl_logic_vector(7 downto 0);
        RFdataINtest    : out    vl_logic_vector(7 downto 0);
        RFout1test      : out    vl_logic_vector(7 downto 0);
        RFout2test      : out    vl_logic_vector(7 downto 0)
    );
end SingleCycleDebug;
