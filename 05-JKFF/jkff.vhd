
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jkff is
  port ( clk, j, k : in std_logic ;
            q, qbar : out std_logic);
end jkff;

architecture behv of jkff is
    signal temp : std_logic;
begin
        process(clk) begin
        if rising_edge(clk) then
            if(j='0' and k='0')then
            temp<=temp;
            elsif(j='1' and k='1')then
            temp<=not temp;
            elsif(j='0' and k='1')then
            temp<='0';
            else temp<='1';
            end if;
           end if;
           q<=temp;
           qbar<= not temp;
         end process;
      end behv;
