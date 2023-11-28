library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity upcount_tb is
end upcount_tb;

architecture behv of upcount_tb is
        component upcount 
                port(clk, rst : in std_logic;
                      q    : out std_logic_vector(3 downto 0));
              end component;
              
              signal clk, rst : std_logic :='0';
              signal q : std_logic_vector(3 downto 0) := "0000";
             
begin
         clock: process begin
                    clk<=not clk;
                    wait for 20 ns;
                    end process;
                    
        uut: upcount port map(clk, rst,q);
       
                    
        stimulus : process begin
                rst<='1'; wait for 100 ns;
                rst<='0'; wait for 400 ns;
                rst<='1'; wait for 40 ns;
                wait;
                end process;

end behv;
