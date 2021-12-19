
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity vip1_m_mul_mul_10bkb_DSP48_0 is
port (
    a: in std_logic_vector(10 - 1 downto 0);
    b: in std_logic_vector(12 - 1 downto 0);
    p: out std_logic_vector(22 - 1 downto 0));

end entity;

architecture behav of vip1_m_mul_mul_10bkb_DSP48_0 is
    signal a_cvt: unsigned(10 - 1 downto 0);
    signal b_cvt: unsigned(12 - 1 downto 0);
    signal p_cvt: unsigned(22 - 1 downto 0);

    attribute keep : string; 
    attribute keep of a_cvt : signal is "true";
    attribute keep of b_cvt : signal is "true";
    attribute keep of p_cvt : signal is "true";

begin

    a_cvt <= unsigned(a);
    b_cvt <= unsigned(b);
    p_cvt <= unsigned (resize(unsigned (unsigned (a_cvt) * unsigned (b_cvt)), 22));
    p <= std_logic_vector(p_cvt);

end architecture;

Library IEEE;
use IEEE.std_logic_1164.all;

entity vip1_m_mul_mul_10bkb is
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER);
    port (
        din0 : IN STD_LOGIC_VECTOR(din0_WIDTH - 1 DOWNTO 0);
        din1 : IN STD_LOGIC_VECTOR(din1_WIDTH - 1 DOWNTO 0);
        dout : OUT STD_LOGIC_VECTOR(dout_WIDTH - 1 DOWNTO 0));
end entity;

architecture arch of vip1_m_mul_mul_10bkb is
    component vip1_m_mul_mul_10bkb_DSP48_0 is
        port (
            a : IN STD_LOGIC_VECTOR;
            b : IN STD_LOGIC_VECTOR;
            p : OUT STD_LOGIC_VECTOR);
    end component;



begin
    vip1_m_mul_mul_10bkb_DSP48_0_U :  component vip1_m_mul_mul_10bkb_DSP48_0
    port map (
        a => din0,
        b => din1,
        p => dout);

end architecture;


