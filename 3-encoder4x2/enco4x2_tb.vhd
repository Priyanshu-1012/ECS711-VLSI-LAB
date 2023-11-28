library ieee;
use ieee.std_logic_1164.all;

entity enco4x2_tb is
end enco4x2_tb;


architecture behv of enco4x2_tb is
        component enco4x2
            port(inp : in std_logic_vector(3 downto 0);
                  outp: out std_logic_vector(1 downto 0));
             end component;
         
        signal inp :  std_logic_vector(3 downto 0) := "0000";
        signal outp : std_logic_vector(1 downto 0) := "00";
        
        begin
        
        uut : enco4x2 port map(inp, outp);
        
        stim_proc1 : process
        begin
        
        inp<="0001";
        wait for 100ns;
        inp<="0010";
        wait for 100ns;
        inp<="0100";
        wait for 100ns;
        inp<="1000";
        wait for 100ns;
        
        end process;
      end behv;
        