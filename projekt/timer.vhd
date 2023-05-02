library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity timer is
    generic (
        frame_lenght : natural := 8
    );

    Port ( clk              : in STD_LOGIC;
           rst              : in std_logic;
           num              : out std_logic_vector(3 downto 0)
    );
end timer;

------------------------------------------------------------------------
-- Architecture body for top level
------------------------------------------------------------------------
architecture Behavioral of timer is
      -- Internal clock enable
  signal sig_en_4ms : std_logic;

  -- Internal 2-bit counter for multiplexing 4 digits
  signal sig_cnt_2bit : std_logic_vector(1 downto 0);
begin
  

    bin_cnt0 : entity work.cnt_up_down
    generic map (
      g_cnt_width => 4
    )
    port map (
      clk    => clk,
      rst    => rst,
      en     => sig_en_4ms,
      cnt_up => '1',
      cnt    => sig_cnt_2bit
    );

    p_timer : process(clk) is 
    begin 
        case sig_cnt_2bit is 
            when "1001" =>
            
        end case;

    end process p_timer;

end architecture Behavioral;