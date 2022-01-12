LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY versaofinal IS
  PORT  (V_SW: in std_logic_vector(10 downto 0);
        G_LEDG: inout std_logic_vector(3 downto 0);
        G_HEX0: inout std_logic_vector(6 downto 0);
        G_HEX1: inout std_logic_vector(6 downto 0);
        G_HEX2: inout std_logic_vector(6 downto 0);
        G_HEX3: inout std_logic_vector(6 downto 0);
        G_HEX4: inout std_logic_vector(6 downto 0);
        G_HEX5: inout std_logic_vector(6 downto 0);
        G_HEX6: inout std_logic_vector(6 downto 0);
        G_HEX7: inout std_logic_vector(6 downto 0)
        );
END versaofinal;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF versaofinal IS

signal m1 : std_logic;
signal m2 : std_logic;
signal m3 : std_logic;
signal m4 : std_logic;
signal m5 : std_logic;
signal m6 : std_logic;
signal m7 : std_logic;
signal m8 : std_logic;
signal mm1 : std_logic;
signal mm2 : std_logic;
signal mm3 : std_logic;
signal mm4 : std_logic;
signal mmm1 : std_logic;
signal mmm2 : std_logic;
signal mmm3 : std_logic;
signal mmm4 : std_logic;
signal n1 : std_logic;
signal n2 : std_logic;
signal n3 : std_logic;
signal n4 : std_logic;
signal n5 : std_logic;
signal n6 : std_logic;
signal n7 : std_logic;
signal n8 : std_logic;
signal nn1 : std_logic;
signal nn2 : std_logic;
signal nn3 : std_logic;
signal nn4 : std_logic;
signal cout1 : std_logic;
signal cout2 : std_logic;
signal cout3 : std_logic;
signal f1 : std_logic;
signal f2 : std_logic;
signal f3 : std_logic;
signal f4 : std_logic;

BEGIN

m1 <= V_SW(4) when (V_SW(8) = '0') else
    (not V_SW(4)) when (V_SW(8) = '1');

m2 <= V_SW(8) when (V_SW(8) = '0') else
    V_SW(0) when (V_SW(8) = '1');

m3 <= V_SW(5) when (V_SW(8) = '0') else
    (not V_SW(5)) when (V_SW(8) = '1');

m4 <= V_SW(8) when (V_SW(8) = '0') else
    V_SW(1) when (V_SW(8) = '1');

m5 <= V_SW(6) when (V_SW(8) = '0') else
    (not V_SW(6)) when (V_SW(8) = '1');

m6 <= V_SW(8) when (V_SW(8) = '0') else
    V_SW(2) when (V_SW(8) = '1');

m7 <= V_SW(7) when (V_SW(8) = '0') else
    (not V_SW(7)) when (V_SW(8) = '1');

m8 <= V_SW(8) when (V_SW(8) = '0') else
    V_SW(3) when (V_SW(8) = '1');

--------------------------------------------------------

mm1 <= m1 when (V_SW(9) = '0') else
    m2 when (V_SW(9) = '1');

mm2 <= m3 when (V_SW(9) = '0') else
    m4 when (V_SW(9) = '1');

mm3 <= m5 when (V_SW(9) = '0') else
    m6 when (V_SW(9) = '1');

mm4 <= m7 when (V_SW(9) = '0') else
    m8 when (V_SW(9) = '1');

--------------------------------------------------------

n1 <= (V_SW(0) and V_SW(4)) when (V_SW(8) = '0') else
    (V_SW(4) or V_SW(0)) when (V_SW(8) = '1');

n2 <= (not V_SW(0)) when (V_SW(8) = '0') else
    (V_SW(0) xor V_SW(4)) when (V_SW(8) = '1');

n3 <= (V_SW(1) and V_SW(5)) when (V_SW(8) = '0') else
    (V_SW(1) or V_SW(5)) when (V_SW(8) = '1');

n4 <= (not V_SW(1)) when (V_SW(8) = '0') else
    (V_SW(1) xor V_SW(5)) when (V_SW(8) = '1');

n5 <= (V_SW(2) and V_SW(6)) when (V_SW(8) = '0') else
    (V_SW(2) or V_SW(6)) when (V_SW(8) = '1');

n6 <= (not V_SW(2)) when (V_SW(8) = '0') else
    (V_SW(2) xor V_SW(6)) when (V_SW(8) = '1');

n7 <= (V_SW(3) and V_SW(7)) when (V_SW(8) = '0') else
    (V_SW(3) or V_SW(7)) when (V_SW(8) = '1');

n8 <= (not V_SW(3)) when (V_SW(8) = '0') else
    (V_SW(3) xor V_SW(7)) when (V_SW(8) = '1');

--------------------------------------------------------

nn1 <= (n1) when (V_SW(9) = '0') else
    (n2) when (V_SW(9) = '1');

nn2 <= (n3) when (V_SW(9) = '0') else
    (n4) when (V_SW(9) = '1');

nn3 <= (n5) when (V_SW(9) = '0') else
    (n6) when (V_SW(9) = '1');

nn4 <= (n7) when (V_SW(9) = '0') else
    (n8) when (V_SW(9) = '1');

--------------------------------------------------------
-- somadores

--s <= A xor B xor cin;
--cout <= (a and b) or (a and cin) or (b and cin);


--mmm1 <= a1 xor mm1 xor ( (cin or (not cin)) and (s1 xor s2) );
--cout1 <= (a1 and mm1) or (a1 and ( (cin or (not cin)) and (s1 xor s2) )) or (mm1 and ( (cin or (not cin)) and (s1 xor s2) ));

mmm1 <= V_SW(0) xor mm1 xor (V_SW(9) xor V_SW(8));
cout1 <= (V_SW(0) and mm1) or (V_SW(0) and (V_SW(9) xor V_SW(8))) or (mm1 and (V_SW(8) xor V_SW(9)));

mmm2 <= V_SW(1) xor mm2 xor cout1;
cout2 <= (V_SW(1) and mm2) or (V_SW(1) and cout1) or (mm2 and cout1);

mmm3 <= V_SW(2) xor mm3 xor cout2;
cout3 <= (V_SW(2) and mm3) or (V_SW(2) and cout2) or (mm3 and cout2);

mmm4 <= V_SW(3) xor mm4 xor cout3;
G_LEDG(0) <= (V_SW(3) and mm4) or (V_SW(3) and cout3) or (mm4 and cout3); --seria o cout4, mas o cout4 já é o "cout final" (cout)

---------------------------------------------------------

f1 <= (mmm1) when (V_SW(10) = '0') else
    (nn1) when (V_SW(10) = '1');

f2 <= (mmm2) when (V_SW(10) = '0') else
    (nn2) when (V_SW(10) = '1');    

f3 <= (mmm3) when (V_SW(10) = '0') else
    (nn3) when (V_SW(10) = '1');

f4 <= (mmm4) when (V_SW(10) = '0') else
    (nn4) when (V_SW(10) = '1');

G_HEX0(0) <= (((f4 xnor f2) and (f3 xor f1))
            and not ((V_SW(8) and (not V_SW(9)) and (not V_SW(10))) 
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            ))) 
            or (((f1 and (((not f4) and (not f3) and (not f2)) or (f4 and f3 and f2))) or (f3 and (not f2) and (not f1)))
            and ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )));
G_HEX0(1) <= (f3 and ((f1 and (f4 xnor f2)) or ((not f4) and f2 and (not f1))) 
            and not ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )))
            or (((f4 and (not f3) and f2) or ((not f4) and f3 and (f2 xor f1)))
            and ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )));
G_HEX0(2) <= (not f1 and (((not f4) and (not f3) and f2) or (f4 and f3 and (not f2)))
            and not ((V_SW(8) and (not V_SW(9)) and (not V_SW(10))) 
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )))
            or ((f4 and f2 and (not f1))
            and ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )));
G_HEX0(3) <= ((((f4 xnor f2) and (f3 xor f1)) or ((not f4) and f3 and f2 and f1))
            and not ((V_SW(8) and (not V_SW(9)) and (not V_SW(10))) 
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )))
            or (((f3 and (f2 xnor f1)) or ((not f3) and (not f2) and (not f1)))
            and ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )));
G_HEX0(4) <= ((f1 or (f3 and (f4 xnor f2)))
            and not ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )))
            or ((f1 or (f3 and (not f2)))
            and ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )));
G_HEX0(5) <= (((f4 and f3 and (not f2)) or ((not f4) and (not f3) and (f2 or f1)) or (f2 and f1 and ((not f4) or (not f3))))
            and not ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )))
            or ((((f2 and (f4 xnor f3)) or (f1 and ((f4 xor f2) or ((not f3) and (not f2)))))
            and ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            ))));
G_HEX0(6) <= (((not f3 and (f4 xnor f2)) or (not f4 and f3 and f2 and f1))
            and not ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )))
            or (((f1 and (f3 xnor f2)) or ((not f4) and (not f3) and (not f2)))
            and ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )));
        
G_HEX1(1) <= (((not f4) or ((not f3) and (not f2)))
            and not ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )))
            or ('1'
            and ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )));
G_HEX1(2) <= (((not f4) or ((not f3) and (not f2)))
            and not ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )))
            or ('1'
            and ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )));
G_HEX1(0) <= ('1'
            and not ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )))
            or ('1'
            and ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )));
G_HEX1(3) <= ('1'
            and not ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )))
            or ('1'
            and ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )));
G_HEX1(4) <= ('1'
            and not ((V_SW(8) and (not V_SW(9)) and (not V_SW(10))) 
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )))
            or ('1'
            and ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )));
G_HEX1(5) <= ('1'
            and not ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )))
            or ('1'
            and ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )));
G_HEX1(6) <= ('1'
            and not ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )))
            or ((not f4)
            and ((V_SW(8) and (not V_SW(9)) and (not V_SW(10)))  
            and (((V_SW(7) and (not V_SW(3)))) or ((V_SW(7) xnor V_SW(3)) and V_SW(6) and (not V_SW(2))) 
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and V_SW(5) and (not V_SW(1)))
            or ((V_SW(7) xnor V_SW(3)) and (V_SW(6) xnor V_SW(2)) and (V_SW(5) xnor V_SW(1)) and V_SW(4) and (not V_SW(0)))
            )));

G_HEX6(0) <= (((V_SW(3) xnor V_SW(1)) and (V_SW(2) xor V_SW(0))));
G_HEX6(1) <= (V_SW(2) and ((V_SW(0) and (V_SW(3) xnor V_SW(1))) or ((not V_SW(3)) and V_SW(1) and (not V_SW(0)))));
G_HEX6(2) <= (not V_SW(0) and (((not V_SW(3)) and (not V_SW(2)) and V_SW(1)) or (V_SW(3) and V_SW(2) and (not V_SW(1)))));
G_HEX6(3) <= ((((V_SW(3) xnor V_SW(1)) and (V_SW(2) xor V_SW(0))) or ((not V_SW(3)) and V_SW(2) and V_SW(1) and V_SW(0))));
G_HEX6(4) <= ((V_SW(0) or (V_SW(2) and (V_SW(3) xnor V_SW(1)))));
G_HEX6(5) <= (((V_SW(3) and V_SW(2) and (not V_SW(1))) or ((not V_SW(3)) and (not V_SW(2)) and (V_SW(1) or V_SW(0))) or (V_SW(1) and V_SW(0) and ((not V_SW(3)) or (not V_SW(2))))));
G_HEX6(6) <= (((not V_SW(2) and (V_SW(3) xnor V_SW(1))) or (not V_SW(3) and V_SW(2) and V_SW(1) and V_SW(0))));

G_HEX7(1) <= (((not V_SW(3)) or ((not V_SW(2)) and (not V_SW(1)))));
G_HEX7(2) <= (((not V_SW(3)) or ((not V_SW(2)) and (not V_SW(1)))));
G_HEX7(0) <= '1';
G_HEX7(3) <= '1';
G_HEX7(4) <= '1';
G_HEX7(5) <= '1';
G_HEX7(6) <= '1';
            
G_HEX4(0) <= (((V_SW(7) xnor V_SW(5)) and (V_SW(6) xor V_SW(4))));
G_HEX4(1) <= (V_SW(6) and ((V_SW(4) and (V_SW(7) xnor V_SW(5))) or ((not V_SW(7)) and V_SW(5) and (not V_SW(4)))));
G_HEX4(2) <= (not V_SW(4) and (((not V_SW(7)) and (not V_SW(6)) and V_SW(5)) or (V_SW(7) and V_SW(6) and (not V_SW(5)))));
G_HEX4(3) <= ((((V_SW(7) xnor V_SW(5)) and (V_SW(6) xor V_SW(4))) or ((not V_SW(7)) and V_SW(6) and V_SW(5) and V_SW(4))));
G_HEX4(4) <= ((V_SW(4) or (V_SW(6) and (V_SW(7) xnor V_SW(5)))));
G_HEX4(5) <= (((V_SW(7) and V_SW(6) and (not V_SW(5))) or ((not V_SW(7)) and (not V_SW(6)) and (V_SW(5) or V_SW(4))) or (V_SW(5) and V_SW(4) and ((not V_SW(7)) or (not V_SW(6))))));
G_HEX4(6) <= (((not V_SW(6) and (V_SW(7) xnor V_SW(5))) or (not V_SW(7) and V_SW(6) and V_SW(5) and V_SW(4))));
            
G_HEX5(1) <= (((not V_SW(7)) or ((not V_SW(6)) and (not V_SW(5)))));
G_HEX5(2) <= (((not V_SW(7)) or ((not V_SW(6)) and (not V_SW(5)))));
G_HEX5(0) <= '1';
G_HEX5(3) <= '1';
G_HEX5(4) <= '1';
G_HEX5(5) <= '1';
G_HEX5(6) <= '1';
            
G_LEDG(1) <= (not f1) and (not f2) and (not f3) and (not f4);
G_LEDG(2) <= not G_HEX1(6);
G_LEDG(3) <= (((not V_SW(8)) and (not V_SW(9)) and (not V_SW(10))) or ((not V_SW(8)) and (V_SW(9)) and (not V_SW(10)))) and G_LEDG(0);

END TypeArchitecture;