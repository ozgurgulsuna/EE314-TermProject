library verilog;
use verilog.vl_types.all;
entity buffer_vlg_sample_tst is
    port(
        fract_clk       : in     vl_logic;
        p_in            : in     vl_logic_vector(3 downto 0);
        read            : in     vl_logic;
        write           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end buffer_vlg_sample_tst;
