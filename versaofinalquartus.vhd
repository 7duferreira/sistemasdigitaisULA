--------------------------------------------------------------------------------
-- Project : ULA de 4 bits
-- Autor   : Eduardo de Sousa Soares Gomes Ferreira e João Pedro Antunes Barbosa
-- Date    : 11 de janeiro de 2022
--
--------------------------------------------------------------------------------

-- o significado de todas as variáveis está descrito no circuito graficamente



LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY versaofinal IS
  PORT (

--entradas dos 4 bits dos dois números (a1, a2, a3, a4 e b1, b2, b3, b4) e as entradas de seleção da operação a ser executada
a1, a2, a3, a4, b1, b2, b3, b4, s1, s2, s3 : in std_logic; 

-- saídas dos 4 bits do número resultante da operação (f1, f2, f3, f4) e o carry out (cout)
f1, f2, f3, f4, cout : out std_logic

    );
END versaofinal;

----------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF versaofinal IS

--"variáveis intermediárias" (saídas de multiplexadores, somadores etc que serão utilizadas como entrada em outros componentes internamente no circuito)
signal m1, m2, m3, m4, m5, m6, m7, m8 : std_logic;
signal mm1, mm2, mm3, mm4 : std_logic;
signal mmm1, mmm2, mmm3, mmm4 : std_logic;
signal n1, n2, n3, n4, n5, n6, n7, n8 : std_logic;
signal nn1, nn2, nn3, nn4 : std_logic;
signal cout1, cout2, cout3 : std_logic;

BEGIN

--multiplexadores

m1 <= b1 when (s1 = '0') else
    (not b1) when (s1 = '1');

m2 <= s1 when (s1 = '0') else
    a1 when (s1 = '1');

m3 <= b2 when (s1 = '0') else
    (not b2) when (s1 = '1');

m4 <= s1 when (s1 = '0') else
    a2 when (s1 = '1');

m5 <= b3 when (s1 = '0') else
    (not b3) when (s1 = '1');

m6 <= s1 when (s1 = '0') else
    a3 when (s1 = '1');

m7 <= b4 when (s1 = '0') else
    (not b4) when (s1 = '1');

m8 <= s1 when (s1 = '0') else
    a4 when (s1 = '1');

--------------------------------------------------------

--multiplexadores

mm1 <= m1 when (s2 = '0') else
    m2 when (s2 = '1');

mm2 <= m3 when (s2 = '0') else
    m4 when (s2 = '1');

mm3 <= m5 when (s2 = '0') else
    m6 when (s2 = '1');

mm4 <= m7 when (s2 = '0') else
    m8 when (s2 = '1');

--------------------------------------------------------

--multiplexadores

n1 <= (a1 and b1) when (s1 = '0') else
    (b1 or a1) when (s1 = '1');

n2 <= (not a1) when (s1 = '0') else
    (a1 xor b1) when (s1 = '1');

n3 <= (a2 and b2) when (s1 = '0') else
    (a2 or b2) when (s1 = '1');

n4 <= (not a2) when (s1 = '0') else
    (a2 xor b2) when (s1 = '1');

n5 <= (a3 and b3) when (s1 = '0') else
    (a3 or b3) when (s1 = '1');

n6 <= (not a3) when (s1 = '0') else
    (a3 xor b3) when (s1 = '1');

n7 <= (a4 and b4) when (s1 = '0') else
    (a4 or b4) when (s1 = '1');

n8 <= (not a4) when (s1 = '0') else
    (a4 xor b4) when (s1 = '1');

--------------------------------------------------------

--multiplexadores

nn1 <= (n1) when (s2 = '0') else
    (n2) when (s2 = '1');

nn2 <= (n3) when (s2 = '0') else
    (n4) when (s2 = '1');

nn3 <= (n5) when (s2 = '0') else
    (n6) when (s2 = '1');

nn4 <= (n7) when (s2 = '0') else
    (n8) when (s2 = '1');

--------------------------------------------------------
--somador genérico em vhdl:
--s <= A xor B xor cin;
--cout <= (a and b) or (a and cin) or (b and cin);
--------------------------------------------------------

-- somadores

mmm1 <= a1 xor mm1 xor (s2 xor s1);
cout1 <= (a1 and mm1) or (a1 and (s2 xor s1)) or (mm1 and (s1 xor s2));

mmm2 <= a2 xor mm2 xor cout1;
cout2 <= (a2 and mm2) or (a2 and cout1) or (mm2 and cout1);

mmm3 <= a3 xor mm3 xor cout2;
cout3 <= (a3 and mm3) or (a3 and cout2) or (mm3 and cout2);

mmm4 <= a4 xor mm4 xor cout3;
cout <= (a4 and mm4) or (a4 and cout3) or (mm4 and cout3); --seria o cout4, mas o cout4 já é o "cout final" (cout)

---------------------------------------------------------

--multiplexadores (já são as próprias saídas do circuito)

f1 <= (mmm1) when (s3 = '0') else
    (nn1) when (s3 = '1');

f2 <= (mmm2) when (s3 = '0') else
    (nn2) when (s3 = '1');    

f3 <= (mmm3) when (s3 = '0') else
    (nn3) when (s3 = '1');

f4 <= (mmm4) when (s3 = '0') else
    (nn4) when (s3 = '1');
    

END TypeArchitecture;