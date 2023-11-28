library IEEE;
use IEEE.std_logic_1164.all;

entity demux1x4_tb is
 end demux1x4_tb;
 
 architecture behv of demux1x4_tb is
        component demux1x4
            port(sel : in std_logic_vector(1 downto 0);
                    y : in std_logic;
                 a,b,c,d : out std_logic);
          end component;
      
      signal sel : std_logic_vector(1 downto 0) :="00";
      signal y : std_logic :='0';
      signal a,b,c,d : std_logic;
      
      begin
      
    uut : demux1x4 port map(sel,y,a,b,c,d);
    stim_proc1 : process
    begin
    sel<="00"; y<='0';
    wait for 100ns;
    
    sel<="01"; y<='1';
    wait for 100ns;
    
    sel<="10"; y<='Z';
    wait for 100ns;
    
    sel<="11"; y<='X';
    wait for 100ns;
    end process;
    end behv;
    
       
       
       