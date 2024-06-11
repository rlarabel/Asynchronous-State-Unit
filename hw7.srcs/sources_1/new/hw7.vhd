library IEEE;
use IEEE.std_logic_1164.all;

entity flipflop is
    port(S, R: in std_logic;
        Q, NQ: inout std_logic);
end flipflop;
architecture flipflop of flipflop is
begin
    NQ <= S NOR Q;
    Q <= R NOR NQ;
end architecture flipflop;       

library IEEE;
use IEEE.std_logic_1164.all;

entity hw7 is
    port(X1, X2, RESET: in std_logic;
    Y1, Y2, Y3: inout std_logic;
    Z: out std_logic);
end hw7;

architecture behavioral of hw7 is 

    component flipflop is
    port(S, R: in std_logic;
        Q: inout std_logic);
    end component;
    signal SY1, SY2, SY3: std_logic;

begin

    SY1 <=((Y1 AND Y2) 
        OR (X2 AND Y1 AND NOT(Y3))
        OR (X1 AND NOT(X2) AND Y1 AND Y3)
        OR (X1 AND X2 AND Y2 AND Y3)
        OR (NOT(X1) AND NOT(X2) AND Y2 AND Y3)
        OR (NOT(X1) AND NOT(X2) AND Y1 AND Y3)) AND RESET;
   flipflop1: flipflop port map (S=> SY1, R => NOT(SY1), Q => Y1);
   SY2 <=((X1 AND NOT(X2) AND NOT(Y1) AND Y3)
        OR (NOT(X2) AND NOT(Y1) AND Y2 AND Y3)
        OR (X1 AND NOT(Y1) AND Y2 AND Y3)
        OR (X1 AND X2 AND Y2 AND Y3)
        OR (X2 AND Y1 AND Y2 AND Y3)
        OR (NOT(X1) AND Y1 AND Y2 AND Y3)
        OR (NOT(X1) AND NOT(X2) AND Y2 AND Y3)
        OR (NOT(X1) AND NOT(X2) AND Y1 AND Y3)) AND RESET;
    flipflop2: flipflop port map (S=> SY2, R => NOT(SY2), Q => Y2);
    SY3 <= ((X2 AND NOT(Y1) AND NOT(Y2)) 
        OR(X1 AND X2 AND Y1 AND Y2)
        OR (X1 AND Y3)
        OR (NOT(Y1) AND Y3)
        OR (NOT(X2) AND Y3)
        OR (NOT(Y2) AND Y3)) AND RESET;
    flipflop3: flipflop port map (S=> SY3, R => NOT(SY3), Q => Y3);
    Z <= (Y1 AND NOT(Y2)) 
        OR (NOT(X1) AND Y2) 
        OR (NOT(Y2) AND Y3) 
        OR (NOT(X2) AND Y1 AND Y3);

end behavioral;