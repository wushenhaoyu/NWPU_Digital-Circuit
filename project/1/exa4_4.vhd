library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity exa4_4 is
port(clk:in STD_LOGIC;
clk_out1:out STD_LOGIC;
clk_out2:out STD_LOGIC);
end exa4_4;
architecture fwm of exa4_4 is
constant m:integer:=25000000;
signal tmp1:std_LOGIC;
signal tmp2:std_LOGIC;
begin
process(clk,tmp1,tmp2)
variable cout:integer:=0;
variable cout2:integer:=0;
begin
if clk'event and clk='1'then
cout:=cout+1;
if cout<=m then tmp1<='0';
elsif cout<m*2 then tmp1<='1';
else cout:=0;
end if;
end if;
if clk'event and clk='1'then
cout2:=cout2+1;
if cout2<=m/10 then tmp2<='0';
elsif cout2<m/5 then tmp2<='1';
else cout2:=0;
end if;
end if;
end process;
clk_out1<=tmp1;
clk_out2<=tmp2;
end fwm;
