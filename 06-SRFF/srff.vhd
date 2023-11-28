library ieee;
use ieee.std_logic_1164.all;

entity srff is
            port(clk,s,r : in std_logic;
                  q, qbar : out std_logic );
         end srff;
                  
 architecture behv of srff is
 
    signal temp : std_logic; 
    begin
            process(clk) begin
             if falling_edge(clk) then
                if(s='0' and r='0') then
                temp <= temp;
                elsif(s='1' and r='1') then
                temp <= 'Z';
                elsif(s='1' and r='0') then
                temp <= '1';
                else
                temp <= '0';
                end if;
                end if;
                q<=temp;
                qbar<=not temp;
                
               end process;
           end behv;
              
                
                