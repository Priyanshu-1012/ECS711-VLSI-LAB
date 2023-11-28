library ieee;
use ieee.std_logic_1164.all;

entity demux1x4 is 
        port( y : in std_logic;
                sel : in std_logic_vector(1 downto 0);
              a,b,c,d : out std_logic);
              end demux1x4;
     
     architecture behv of demux1x4 is
     begin
        process(y,sel) begin
        case sel is
        when "00" =>
        a<=y; b<='0'; c<='0'; d<='0';
        when "01" =>
        a<='0'; b<=y; c<='0'; d<='0';
        when "10" =>
        a<='0'; b<='0'; c<=y; d<='0';
        when others =>
        a<='0'; b<='0'; c<='0'; d<=y;
        end case;
        end process;
        end behv;
        
        