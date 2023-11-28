library ieee;
use ieee.std_logic_1164.all;

entity deco2x4 is
        port(inp : in std_logic_vector(1 downto 0);
               outp : out std_logic_vector(3 downto 0));
       end deco2x4;
       
   architecture behv of deco2x4 is 
       begin
            process(inp) begin
            case inp is
            when "00" =>
            outp<="0001";
            when "01" =>
            outp<="0010";
            when "10" =>
            outp<="0100";
            when others =>
            outp<="1000";
            
            end case;
          end process;
         end behv;