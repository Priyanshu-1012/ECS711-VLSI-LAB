library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf ells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity jkff_tb is
end jkff_tb;

architecture behv of jkff_tb is
 component jkff
                port(clk, j, k : in std_logic ;
                       q, qbar : out std_logic);
     end component;
     
     signal clk,j,k : std_logic :='0';
     signal q, qbar : std_logic;
     
     begin
     uut : jkff port map (clk,j,k,q,qbar);
    clock: process begin
          clk<= not clk;
           wait for 20ns;
           end process;
      
      stimulus: process begin
            j<='0' ; k<='0' ;wait for 80 ns;    
            j<='1' ; k<='0' ;wait for 80 ns;    
            j<='0' ; k<='0' ;wait for 80 ns;    
            j<='0' ; k<='1' ;wait for 80 ns;    
            j<='1' ; k<='1' ;wait for 80 ns;               
end process;


end behv;
