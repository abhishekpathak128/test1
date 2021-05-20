
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity led_blink is
  Port (
  clk_50MHz: in std_logic;
  led: out std_logic
   );
end led_blink;

architecture Behavioral of led_blink is
  signal counter: std_logic_vector(24 downto 0);
  signal clk_1MHz: std_logic;
begin
prescaler: process(clk_50MHz)
begin
  if rising_edge(clk_50MHz) then
    if counter<"1011111010111100001000000" then
       counter<=counter+1;
    else
       clk_1MHz<= not clk_1MHz;
       counter<=(others=>'0');
    end if;
  end if;
    
end process prescaler;
  led<=clk_1MHz;
end Behavioral;
