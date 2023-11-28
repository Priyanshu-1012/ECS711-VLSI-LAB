library ieee;
use ieee.std_logic_1164.all;


entity deco2x4_tb is
       end deco2x4_tb;
       
 
 architecture behv of deco2x4_tb is
            component deco2x4 
            port(inp : in std_logic_vector(1 downto 0);
               outp : out std_logic_vector(3 downto 0));
            end component;
          
       signal inp : std_logic_vector(1 downto 0) := "00";
       signal outp: std_logic_vector(3 downto 0) := "0000";
       
       begin
       
       uut : deco2x4 port map(inp, outp);
       
       stimulus : process
       begin
                inp<="00"; wait for 100ns;
                inp<="01"; wait for 100ns;
                inp<="10"; wait for 100ns;
                inp<="11"; wait for 100ns;
              end process;
             end behv;