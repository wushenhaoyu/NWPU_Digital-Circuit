library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity exa4_3 is
port(clk,rst:in STD_LOGIC;
dout:out STD_LOGIC_VECTOR(3 downto 0);
cout:out STD_LOGIC);
end exa4_3;
architecture fwm of exa4_3 is
signal q1:std_LOGIC_VECTOR(3 downto 0);
begin
process(clk,rst)
begin
if rst='0'then q1<=(others=>'0');cout<='0';
elsif clk'event and clk='1' then
q1<=q1+1;
cout<='0';
if q1>="1110"then q1<=(others=>'0');cout<='1';
end if;
end if;
end process;
dout<=q1;
end fwm;
