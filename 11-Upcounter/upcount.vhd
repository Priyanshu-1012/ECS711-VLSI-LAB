library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity upcount is
  Port (clk, rst : in std_logic;
            q    : out std_logic_vector(3 downto 0));
end upcount;

architecture behv of upcount is
    signal temp : std_logic_vector(3 downto 0);
begin
    process(clk, rst) begin
        if falling_edge(clk) then
            if rst='1' then
                temp<="0000";
            else 
                temp<=temp+"0001";
              end if;
            end if;
           q<=temp;
          end process;
end behv;
