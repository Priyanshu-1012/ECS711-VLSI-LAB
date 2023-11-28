library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity fa_tb is
end fa_tb;

architecture behv of fa_tb is
    component fa 
                port(a,b, cin : in std_logic;
                    sum, cout : out std_logic);
            end component;
           
           signal a,b,cin : std_logic:='0';
           signal sum,cout : std_logic:='0';
           
begin
         uut : fa port map(a,b,cin,sum,cout);
         
         stimulus: process begin
                a<='0'; b<='0'; cin<='0'; wait for 100ns;
                a<='0'; b<='0'; cin<='1'; wait for 100ns;
                a<='0'; b<='1'; cin<='1'; wait for 100ns;
                a<='1'; b<='1'; cin<='1'; wait for 100ns;
end process;
end behv;
