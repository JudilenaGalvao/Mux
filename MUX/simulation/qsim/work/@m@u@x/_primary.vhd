library verilog;
use verilog.vl_types.all;
entity MUX is
    port(
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        S1              : in     vl_logic;
        S0              : in     vl_logic;
        Y               : out    vl_logic
    );
end MUX;
