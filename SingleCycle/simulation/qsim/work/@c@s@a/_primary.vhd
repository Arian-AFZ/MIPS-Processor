library verilog;
use verilog.vl_types.all;
entity CSA is
    port(
        \out\           : out    vl_logic_vector(7 downto 0);
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        cin             : in     vl_logic
    );
end CSA;
