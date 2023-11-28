library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dff is
  Port ( clk, d : in std_logic;
            q   : out std_logic );
end dff;

architecture behv of dff is
begin
process(clk) begin
    if rising_edge(clk)then
        q<=d;
        end if;
      end process;
 end behv;
