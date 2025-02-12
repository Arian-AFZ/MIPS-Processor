library verilog;
use verilog.vl_types.all;
entity SingleCycleDebug_vlg_check_tst is
    port(
        ALUcontroltest  : in     vl_logic_vector(3 downto 0);
        ALUin1test      : in     vl_logic_vector(7 downto 0);
        ALUin2test      : in     vl_logic_vector(7 downto 0);
        ALUOptest       : in     vl_logic_vector(1 downto 0);
        ALUtest         : in     vl_logic_vector(7 downto 0);
        branch          : in     vl_logic;
        IMout           : in     vl_logic_vector(15 downto 0);
        Jump            : in     vl_logic;
        pc              : in     vl_logic_vector(7 downto 0);
        RegWritetest    : in     vl_logic;
        RFdataINtest    : in     vl_logic_vector(7 downto 0);
        RFout1test      : in     vl_logic_vector(7 downto 0);
        RFout2test      : in     vl_logic_vector(7 downto 0);
        zero            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end SingleCycleDebug_vlg_check_tst;
