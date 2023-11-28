library ieee;
use ieee.std_logic_1164.all;

entity srff_tb is
end srff_tb;

architecture behv of srff_tb is
    component srff 
        port(clk,s,r : in std_logic;
             q, qbar : out std_logic );
      end component;
    
    signal clk,s,r : std_logic :='0';
    signal q, qbar  :std_logic;
    begin 
    
    uut : srff port map(clk,s,r,q,qbar);
    
    clock : process begin
            clk <= not clk;
            wait for 20 ns;
            end process;
        
    stimulus : process begin
                s<='0'; r<='0';wait for 80 ns;
                s<='0'; r<='1';wait for 80 ns;
                s<='1'; r<='0';wait for 80 ns;
                s<='0'; r<='0';wait for 80 ns;
                s<='1'; r<='1';wait for 80 ns;
                end process;
                
             end behv;
                
    
    
       