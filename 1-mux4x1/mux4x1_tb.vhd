library IEEE;
use IEEE.std_logic_1164.all;

entity mux4x1_tb is
end mux4x1_tb;


architecture behv of mux4x1_tb is
    component mux4x1
                port( w,x,y,z : in std_logic;
                        a,b   : in std_logic;
                        s     : out std_logic);
            end component;
       
       signal w,x,y,z,a,b : std_logic := '0';
       signal       s     : std_logic;
       
       begin
       uut : mux4x1 port map(w,x,y,z,a,b,s);
       
       stim_proc1 : process begin
       w<='1';
       x<='0';
       y<='Z';
       z<='X';
       a<='0'; b<='0';
       wait for 100ns;
       a<='0'; b<='1';
       wait for 100ns;
       a<='1'; b<='0';
       wait for 100ns;
       a<='1'; b<='1';
       wait for 100ns;
       
       end process;
       end behv;