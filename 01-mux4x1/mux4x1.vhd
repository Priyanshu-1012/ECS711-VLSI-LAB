library IEEE;
use IEEE.std_logic_1164.all;

entity mux4x1 is
                port(
                w,x,y,z : in std_logic;
                a,b : in std_logic;
                s      : out std_logic);
                end mux4x1;
architecture behv of mux4x1 is
begin
    process(w,x,y,z,a,b) begin
    if(b = '0' and a = '0') then
    s<=w;
    elsif(b = '0' and a = '1') then
    s<=x;
    elsif(b = '1' and a = '0') then
    s<=y;
    else s<=z;
    end if;
    end process;
    end behv;                                 