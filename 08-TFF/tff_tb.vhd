library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tff_tb is
end tff_tb;

architecture behv of tff_tb is
        component tff 
                port(clk ,t : in std_logic;
                       q  : out std_logic);
              end component;       
              
                signal clk,t : std_logic := '0';
                signal q : std_logic :='0';
begin
 uut : tff port map(clk,t,q);
 
 clock : process begin
        clk <= not clk;
        wait for 20 ns;
        end process;
        
stimuli : process begin
            t<='0' ; wait for 60ns;
            t<='1' ; wait for 120ns;
            t<='0' ; wait for 120ns;
            end process;
end behv;
