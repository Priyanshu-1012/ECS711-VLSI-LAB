library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity fa is
  Port ( a,b, cin : in std_logic;
          sum, cout : out std_logic);
end fa;

architecture struc of fa is
    begin
        sum <= a xor b xor cin;
        cout <= (a and b) or (b and cin) or (cin and a);
end struc;
