library ieee;
use ieee.std_logic_1164.all;

entity enco4x2 is
                port( inp : in std_logic_vector(3 downto 0);
                      outp : out std_logic_vector(1 downto 0));
             end entity;
             
      architecture behv of enco4x2 is
      begin
        process(inp) begin
        case inp is
           when "0001" =>
            outp<="00";
            when "0010" =>
            outp<="01";
            when "0100" =>
            outp<="10";
            when "1000" =>
            outp<="11";
            when others =>
            outp<="ZZ";
           end case;
        end process;
      end behv;