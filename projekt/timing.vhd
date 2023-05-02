-- vsg_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity timing is
    generic (
        frame_lenght : natural := 8
    );

    Port ( CLK100MHZ        : in STD_LOGIC;
           i_tx_data        : in STD_LOGIC_VECTOR(7 downto 0);
           i_tx_data_valid  : in std_logic;
           i_rx_seiral      : in std_logic;
           o_tx_serial      : out std_logic;
           o_tx_ready       : out std_logic;
           o_rx_data        : out std_logic_vector(7 downto 0);
           o_rx_data_valid  : out std_logic;
           rst              : in std_logic
    );
end timing;

------------------------------------------------------------------------
-- Architecture body for top level
------------------------------------------------------------------------
architecture Behavioral of timing is
    signal frame : unsigned (frame_lenght - 1 downto 0);
begin
    data_frame : process (CLK100MHZ) is 
    begin
        if rising_edge(CLK100MHZ)then
            if (rst = '1') then
                frame <= (others => '0');
            end if;
        end if;

    end process data_frame;
end architecture Behavioral;