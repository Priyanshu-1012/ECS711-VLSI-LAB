library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity alu is
  Port ( a,b : in signed(3 downto 0);
          sel : in std_logic_vector(2 downto 0);
          res : out signed(3 downto 0));
end alu;
architecture behv of alu is
    begin 
        process(a,b,sel)begin
        case sel is 
        when "000" =>
        res <= a + b;
        when "001" =>
        res <=a - b;
        when "010" =>
        res <= a - "0001";
        when "011" =>
        res <= a + "0001";
        when "100" =>
        res <= a and b;
        when "101" =>
        res <= a or b;
        when "110" =>
        res <= not a;
        when "111" =>
        res <= a xor b;
        when others =>
        res <= "ZZZZ";
        end case;
      end process;
end behv;
