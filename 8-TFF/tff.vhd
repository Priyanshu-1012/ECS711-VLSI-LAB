library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tff is
  Port (clk ,t : in std_logic;
            q  : out std_logic );
end tff;

architecture behv of tff is
signal temp : std_logic :='0';
begin
    process(clk) begin
    if falling_edge(clk) then
        if (t = '0') then
            temp<=temp;
          else temp<= not temp;
          end if;
       end if;
       q<=temp;
      end process;
    end behv;
