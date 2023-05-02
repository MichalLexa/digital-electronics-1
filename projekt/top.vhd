library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
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
end top;

------------------------------------------------------------------------
-- Architecture body for top level
------------------------------------------------------------------------
architecture Behavioral of top is

end architecture Behavioral;