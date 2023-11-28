library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dff_tb is
end dff_tb;

architecture behv of dff_tb is
        component dff
                port( clk, d : in std_logic;
            q   : out std_logic);
          end component;
          
       signal clk,d : std_logic := '0';
       signal q : std_logic :='0';
       
begin
 
 uut : dff port map(clk,d,q);
 clock : process begin
        clk<=not clk;
        wait for 20ns;
        end process;
        
  stimulus : process begin
                d<='0'; wait for 60 ns; 
                d<='1'; wait for 60 ns; 
                d<='1'; wait for 60 ns; 
                d<='0'; wait for 60 ns; 
                d<='1'; wait for 60 ns; 
                d<='0'; wait for 60 ns; 
                
       end process;
end behv;
