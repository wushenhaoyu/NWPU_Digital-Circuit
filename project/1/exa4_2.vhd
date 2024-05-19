library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity exa4_2 is
port(data_in:in STD_LOGIC_VECTOR(3 downto 0);
dis_out:out STD_LOGIC_VECTOR(6 downto 0));
end exa4_2;
architecture fwm of exa4_2 is
begin
process(data_in)
begin
case data_in is
when"0000"=>dis_out<="1000000";
when"0001"=>dis_out<="1111001";
when"0010"=>dis_out<="0100100";
when"0011"=>dis_out<="0110000";
when"0100"=>dis_out<="0011001";
when"0101"=>dis_out<="0010010";
when"0110"=>dis_out<="0000010";
when"0111"=>dis_out<="1111000";
when"1000"=>dis_out<="0000000";
when"1001"=>dis_out<="0010000";
when"1010"=>dis_out<="0001000";
when"1011"=>dis_out<="0000011";
when"1100"=>dis_out<="1000110";
when"1101"=>dis_out<="0100001";
when"1110"=>dis_out<="0000110";
when others=>dis_out<="1111111";
end case;
end process;
end fwm;

