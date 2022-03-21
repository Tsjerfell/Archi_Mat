----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.03.2022 08:33:17
-- Design Name: 
-- Module Name: compteur_16bits - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity compteur_16bits is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           SENS : in STD_LOGIC;
           EN : in STD_LOGIC;
           LOAD : in STD_LOGIC;
           Din : in STD_LOGIC_VECTOR (15 downto 0);
           Dout : out STD_LOGIC_VECTOR (15 downto 0));
end compteur_16bits;

architecture Behavioral of compteur_16bits is

begin    
    process
        variable N : integer;
    begin
        wait until CLK ='1';
        if LOAD = '1' then Dout <= Din; end if;
        if EN = '0' then 
            if SENS = '1' then N := Dout + 1;
            else N := Dout - 1; 
            end if;
        end if; 
    end process;
end Behavioral;

