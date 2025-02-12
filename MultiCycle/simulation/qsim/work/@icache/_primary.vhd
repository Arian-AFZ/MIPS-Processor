library verilog;
use verilog.vl_types.all;
entity Icache is
    port(
        dataOUT         : out    vl_logic_vector(15 downto 0);
        clk             : in     vl_logic;
        MemWrite        : in     vl_logic;
        addr            : in     vl_logic_vector(7 downto 0);
        dataIN          : in     vl_logic_vector(15 downto 0)
    );
end Icache;
