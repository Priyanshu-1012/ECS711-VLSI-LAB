--steps
--1. libraries
--2. empty entities
--3. component declaration
--4. defines signal for each port in dut
--5. component instantiation
--6. provide stimuli
library IEEE;                        --libaries
use IEEE.STD_LOGIC_1164.ALL;
 
entity mux4x1_tb is                  --empty entity dut
end mux4x1_tb;

architecture behv of mux4x1_tb is

 component mux4x1 is
    port(                              --component declaration
		a,b,c,d : in std_logic;
    	sel   : in std_logic_vector(1 downto 0);
    	y       : out std_logic
    	);
    end component;
   
   signal a,b,c,d : std_logic := '0';            --defines signal for each port in dut
   signal sel : std_logic_vector(1 downto 0) := "00";
   signal y : std_logic :='0';
   
begin
 UUT : mux4x1 port map(             --component instantiation
     a=>a,
     b=>b,                                --mind the , and not ;
     c=>c,
     d=>d,
     sel=>sel,
     y=>y
  );
  
  stimuli : process
  begin
  a<='0';
  b<='1';
  c<='0';
  d<='1';
  sel<="00";
  wait for 2 ns;
  sel<="01";
  wait for 2 ns;
  sel<="10";
  wait for 2 ns;
  sel<="11";
  wait for 2 ns;
  wait;
  end process;

end behv;
