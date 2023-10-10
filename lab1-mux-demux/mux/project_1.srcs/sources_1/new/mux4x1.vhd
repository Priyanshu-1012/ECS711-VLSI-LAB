-- steps
--1. define libraries
--2. define entity (its ports)
--3. define behvior

library IEEE;
use IEEE.std_logic_1164.all;

entity mux4x1 is
port(
	a,b,c,d : in std_logic;
    sel   : in std_logic_vector(1 downto 0);
    y       : out std_logic
    );
    end mux4x1;

architecture behv of mux4x1 is
   begin
   
   process (a,b,c,d,sel)
   begin
    case sel is
    
    when "00" =>
    y<=a;
    
    when "01" =>
    y<=b;
    
    when "10" =>
    y<=c;
    
    when others =>
    y<=d;
    
    end case;
   end process;
end behv;
 