----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2023 02:06:34 PM
-- Design Name: 
-- Module Name: mux_3bit_4to1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_3bit_4to1 is
  Port (
       a_i      : in std_logic;
       b_i      : in std_logic;
       c_i      : in std_logic;
       d_i      : in std_logic;
       addr_i   : in std_logic_vector(3 downto 0);
       en_i     : in std_logic;
       y_o      : out std_logic 
       );
end mux_3bit_4to1;

architecture Behavioral of mux_3bit_4to1 is

begin
    with addr_i select
        y_o <= a_i when "00",  -- If addr_i = "000" then y_o = a_i
               b_i when "01",
               c_i when "10",
               d_i when others; -- All other combinations

end Behavioral;
