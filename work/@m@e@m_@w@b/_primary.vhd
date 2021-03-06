library verilog;
use verilog.vl_types.all;
entity MEM_WB is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        ex_alu_result   : in     vl_logic_vector(15 downto 0);
        mem_read_data   : in     vl_logic_vector(15 downto 0);
        write_back_en   : in     vl_logic;
        write_back_dest : in     vl_logic_vector(2 downto 0);
        write_back_result_mux: in     vl_logic;
        RegMemToWBOut   : out    vl_logic_vector(36 downto 0)
    );
end MEM_WB;
