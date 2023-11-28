library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity alu_tb is
end alu_tb;

architecture behv of alu_tb is
        component alu port(a,b : in signed(3 downto 0);
          sel : in std_logic_vector(2 downto 0);
          res : out signed(3 downto 0));
          end component;
          
          signal a,b : signed(3 downto 0):="0000";
          signal sel : std_logic_vector(2 downto 0) :="000";
          signal res : signed(3 downto 0):="0000";
          
          
begin
    uut: alu port map(a,b,sel,res);
    stimulus: process begin
    a<="0001"; b<="0010"; sel<="000"; wait for 80 ns;
    sel<="001"; wait for 80 ns;
    sel<="010"; wait for 80 ns;
    sel<="011"; wait for 80 ns;
    sel<="100"; wait for 80 ns;
    sel<="101"; wait for 80 ns;
    sel<="110"; wait for 80 ns;
     sel<="111"; wait for 80 ns;
    end process;
    end behv;
       
