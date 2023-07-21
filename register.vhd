
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity registers is 
	port (reg_a1: in std_logic_vector(2 downto 0);
			reg_a2: in std_logic_vector(2 downto 0);
			reg_a3: in std_logic_vector(2 downto 0);
			t2: out std_logic_vector(15 downto 0);
			t2_in: in std_logic_vector(15 downto 0);
			t3: out std_logic_vector(15 downto 0);
			t3_in: in std_logic_vector(15 downto 0);
			shift7: in std_logic_vector(15 downto 0); 
			clk: in std_logic;
			state: in std_logic_vector(5 downto 0);
			pc: in std_logic_vector(15 downto 0);
			pc_update: in std_logic_vector(15 downto 0)
	);
	end entity;
	
architecture working of registers is 
type mem_array is array (0 to 7 ) of std_logic_vector (15 downto 0);
signal regs: mem_array :=(
   x"0001",x"0001", x"FFFF", x"FFFF",
	x"FFFF",x"FFFF", x"FFFF", x"FFFF"
   ); 
begin
regs_read: process(reg_a1, reg_a2, state)
begin 
	if (state = "000010") then
		t2 <= regs(to_integer(unsigned(reg_a1)));
		t3 <= regs(to_integer(unsigned(reg_a2)));
	elsif (state="011010") then
		t3 <= regs(0);
	elsif (state="011011") then
		t3 <= regs(1);
	elsif (state="011100") then
		t3 <= regs(2);
	elsif (state="011101") then
		t3 <= regs(3);
	elsif (state="011110") then
		t3 <= regs(4);
	elsif (state="011111") then
		t3 <= regs(5);
	elsif (state="100000") then
		t3 <= regs(6);
	elsif (state="100001") then
		t3 <= regs(7);
	end if;
 end process;
 
regs_write: process(clk)
begin
 if (rising_edge(clk)) then
   regs(7) <= pc_update;
	if (state = "000100" or state="000110") then
		regs(to_integer(unsigned(reg_a3)))<= t2_in;
	elsif (state="000111") then
		regs(to_integer(unsigned(reg_a3)))<= shift7;
	elsif (state="001010") then
		regs(to_integer(unsigned(reg_a3))) <= t2_in;
	elsif (state="010010") then	
		regs(0) <= t3_in;
	elsif (state="010011") then	
		regs(1) <= t3_in;
	elsif (state="010100") then	
		regs(2) <= t3_in;
	elsif (state="010101") then	
		regs(3) <= t3_in;
	elsif (state="010110") then	
		regs(4) <= t3_in;
	elsif (state="010111") then	
		regs(5) <= t3_in;
	elsif (state="011000") then	
		regs(6) <= t3_in;
	elsif (state="011001") then	
		regs(7) <= t3_in;
	elsif (state="001110") then	
		regs(to_integer(unsigned(reg_a3))) <= pc;
	end if;
	end if;
end process;
end working;