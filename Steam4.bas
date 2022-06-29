DECLARE SUB INY ()
DECLARE SUB EQ ()
DECLARE SUB TABLA ()
DECLARE SUB INS ()
DECLARE SUB CALC ()
DECLARE SUB ex ()
DECLARE SUB Exam ()
CLS
T = 9
S = 5
SCREEN 0
'chr$
'€
DO
S = S + 1
IF S = 10 THEN EXIT DO
COLOR 4
LOCATE T, S
PRINT "±±±±±"
LOCATE T + 1, S
PRINT "±±"
LOCATE T + 2, S
PRINT "±±±±±"
LOCATE T + 3, S
PRINT "   ±±"
LOCATE T + 4, S
PRINT "±±±±±"
FOR YY = 1 TO 500
IF INKEY$ = CHR$(27) THEN GOTO MENU
NEXT YY

COLOR 0
LOCATE T, S
PRINT "±±±±±"
LOCATE T + 1, S
PRINT "±±"
LOCATE T + 2, S
PRINT "±±±±±"
LOCATE T + 3, S
PRINT "   ±±"
LOCATE T + 4, S
PRINT "±±±±±"
LOOP
COLOR 4
LOCATE T, S
PRINT "±±±±±"
LOCATE T + 1, S
PRINT "±±"
LOCATE T + 2, S
PRINT "±±±±±"
LOCATE T + 3, S
PRINT "   ±±"
LOCATE T + 4, S
PRINT "±±±±±"

T = 5
S = S + 8
DO
T = T + 1
IF T = 9 THEN EXIT DO
COLOR 2
LOCATE T, S
PRINT "±±±±±"
LOCATE T + 1, S
PRINT "±± ±±"
LOCATE T + 2, S
PRINT "±±±±±"
LOCATE T + 3, S
PRINT "±±"
LOCATE T + 4, S
PRINT "±±"
FOR YY = 1 TO 500
IF INKEY$ = CHR$(27) THEN GOTO MENU
NEXT YY
COLOR 0
LOCATE T, S
PRINT "±±±±±"
LOCATE T + 1, S
PRINT "±± ±±"
LOCATE T + 2, S
PRINT "±±±±±"
LOCATE T + 3, S
PRINT "±±"
LOCATE T + 4, S
PRINT "±±"
LOOP

COLOR 2
LOCATE T, S
PRINT "±±±±±"
LOCATE T + 1, S
PRINT "±± ±±"
LOCATE T + 2, S
PRINT "±±±±±"
LOCATE T + 3, S
PRINT "±±"
LOCATE T + 4, S
PRINT "±±"



T = 19
S = S + 8
DO
T = T - 1
IF T = 9 THEN EXIT DO
COLOR 4
LOCATE T, S
PRINT "±±±±±"
LOCATE T + 1, S
PRINT "±±"
LOCATE T + 2, S
PRINT "±±±±"
LOCATE T + 3, S
PRINT "±±"
LOCATE T + 4, S
PRINT "±±±±±"
FOR YY = 1 TO 500
IF INKEY$ = CHR$(27) THEN GOTO MENU
NEXT YY
COLOR 0
LOCATE T, S
PRINT "±±±±±"
LOCATE T + 1, S
PRINT "±±"
LOCATE T + 2, S
PRINT "±±±±"
LOCATE T + 3, S
PRINT "±±"
LOCATE T + 4, S
PRINT "±±±±±"
LOOP

COLOR 4
LOCATE T, S
PRINT "±±±±±"
LOCATE T + 1, S
PRINT "±±"
LOCATE T + 2, S
PRINT "±±±±"
LOCATE T + 3, S
PRINT "±±"
LOCATE T + 4, S
PRINT "±±±±±"

Z = S + 8
S = 70
DO
S = S - 1
IF S = Z THEN EXIT DO
COLOR 2
LOCATE T, S
PRINT "±±±±±"
LOCATE T + 1, S
PRINT "±±"
LOCATE T + 2, S
PRINT "±±"
LOCATE T + 3, S
PRINT "±±"
LOCATE T + 4, S
PRINT "±±±±±"
FOR YY = 1 TO 500
IF INKEY$ = CHR$(27) THEN GOTO MENU
NEXT YY
COLOR 0
LOCATE T, S
PRINT "±±±±±"
LOCATE T + 1, S
PRINT "±±"
LOCATE T + 2, S
PRINT "±±"
LOCATE T + 3, S
PRINT "±±"
LOCATE T + 4, S
PRINT "±±±±±"
LOOP

COLOR 2
LOCATE T, S
PRINT "±±±±±"
LOCATE T + 1, S
PRINT "±±"
LOCATE T + 2, S
PRINT "±±"
LOCATE T + 3, S
PRINT "±±"
LOCATE T + 4, S
PRINT "±±±±±"
Z = 0
Z = T
S = S + 8
T = 2
DO
T = T + 1
IF T = Z THEN EXIT DO
COLOR 4
LOCATE T, S
PRINT "±±"
LOCATE T + 1, S
PRINT "±±"
LOCATE T + 2, S
PRINT "±±"
LOCATE T + 3, S
PRINT "±±"
LOCATE T + 4, S
PRINT "±±"
FOR YY = 1 TO 500
IF INKEY$ = CHR$(27) THEN GOTO MENU
NEXT YY
COLOR 0
LOCATE T, S
PRINT "±±"
LOCATE T + 1, S
PRINT "±±"
LOCATE T + 2, S
PRINT "±±"
LOCATE T + 3, S
PRINT "±±"
LOCATE T + 4, S
PRINT "±±"
LOOP
COLOR 4
LOCATE T, S
PRINT "±±"
LOCATE T + 1, S
PRINT "±±"
LOCATE T + 2, S
PRINT "±±"
LOCATE T + 3, S
PRINT "±±"
LOCATE T + 4, S
PRINT "±±"

Z = 0
Z = S + 8
K = T
T = 17
S = 66

DO
T = T - 1
S = S - 2
IF T = K OR S = Z THEN EXIT DO
COLOR 2
LOCATE T, S - 2
PRINT "±±±±±"
LOCATE T + 1, S - 2
PRINT "±± ±±"
LOCATE T + 2, S - 2
PRINT "±±±±±"
LOCATE T + 3, S - 2
PRINT "±± ±±"
LOCATE T + 4, S - 2
PRINT "±± ±±"
FOR YY = 1 TO 500
IF INKEY$ = CHR$(27) THEN GOTO MENU
NEXT YY
COLOR 0
LOCATE T, S - 2
PRINT "±±±±±"
LOCATE T + 1, S - 2
PRINT "±± ±±"
LOCATE T + 2, S - 2
PRINT "±±±±±"
LOCATE T + 3, S - 2
PRINT "±± ±±"
LOCATE T + 4, S - 2
PRINT "±± ±±"
LOOP

COLOR 2
LOCATE T, S - 2
PRINT "±±±±±"
LOCATE T + 1, S - 2
PRINT "±± ±±"
LOCATE T + 2, S - 2
PRINT "±±±±±"
LOCATE T + 3, S - 2
PRINT "±± ±±"
LOCATE T + 4, S - 2
PRINT "±± ±±"
K = T
T = 3
Z = S + 6

S = 62
DO
T = T + 1
S = S - 1
IF S = Z OR T = K THEN EXIT DO
COLOR 4
LOCATE T, S
PRINT "±±"
LOCATE T + 1, S
PRINT "±±"
LOCATE T + 2, S
PRINT "±±"
LOCATE T + 3, S
PRINT "±±"
LOCATE T + 4, S
PRINT "±±±±±"
FOR YY = 1 TO 500
IF INKEY$ = CHR$(27) THEN GOTO MENU
NEXT YY
COLOR 0
LOCATE T, S
PRINT "±±"
LOCATE T + 1, S
PRINT "±±"
LOCATE T + 2, S
PRINT "±±"
LOCATE T + 3, S
PRINT "±±"
LOCATE T + 4, S
PRINT "±±±±±"

LOOP

COLOR 4
LOCATE T, S
PRINT "±±"
LOCATE T + 1, S
PRINT "±±"
LOCATE T + 2, S
PRINT "±±"
LOCATE T + 3, S
PRINT "±±"
LOCATE T + 4, S
PRINT "±±±±±"

'CHR$
LOCATE 15, 20
PRINT "€€€€€   €€€€€   €€€€€€  €   €"
LOCATE 16, 20
PRINT " €€     €€      €€  €€  €€ €€"
LOCATE 17, 20
PRINT " €€     €€€€    €€€€€€  € € €"
LOCATE 18, 20
PRINT " €€     €€      €€  €€  €   €"
LOCATE 19, 20
PRINT " €€     €€€€€   €€  €€  €   €"
T = 1
DO
T = T + 1
IF T > 20 THEN EXIT DO
COLOR 4
LOCATE 20, T: PRINT "By JSM Entertaintment Software"
FOR YY = 1 TO 500
IF INKEY$ = CHR$(27) THEN GOTO MENU
NEXT YY
COLOR 0
LOCATE 20, T: PRINT "By JSM Entertaintment Software"
LOOP
K = 0
COLOR 4
LOCATE 20, 20: PRINT "By JSM Entertaintment Software"
PLAY "O2 L10 ED"
DO
LOOP WHILE INKEY$ = ""
SCREEN 12
X1 = 0
Y1 = 20
X = 0
Y = 479
DO
X = X + 10
X1 = X1 + 10
IF X >= 639 THEN X = 2
IF X1 >= 610 THEN X1 = 0
K = K + 1
IF K > 700 THEN
K = 0
CLS
END IF
c% = RND * 14 + 1
LINE (X1, Y1)-(X, Y), c%
LOCATE 1, 1
COLOR c%
PRINT "Special Team 4.01/ BY JSM Entertaintment"
LOCATE 2, 1: PRINT "Software. PRESS ANY KEY"
SOUND RND * 30000 + 37, .1
LOOP WHILE INKEY$ = ""

CLS
DO
COLOR RND * 14 + 1
LOCATE 10, 10
PRINT "POR FAVOR, DESCONECTE NUM LOCK DE MODO"
PRINT "QUE LA LUZ SE ENCUENTRE APAGADA."
LOOP WHILE INKEY$ = ""
CLEAR
JORDI:
T = 0
JORDI2:
MENU:
TIMER ON
ON TIMER(10) GOSUB INY
CLS
SCREEN 12

'chr$
COLOR 14
LOCATE 1, 1: PRINT "⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø"
LOCATE 2, 1: PRINT "≥                                                                             ≥"
LOCATE 3, 1: PRINT "≥                              SPECIAL TEAM 4.01 FIRST MENU                   ≥"
LOCATE 4, 1: PRINT "≥                                                                             ≥"
LOCATE 5, 1: PRINT "¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ "
LOCATE 9, 10
PRINT "        ⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø"
LOCATE 10, 10
PRINT "        ≥                                        ≥"
LOCATE 11, 10
PRINT "⁄ƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø    ≥"
LOCATE 12, 10
PRINT "≥                                           ≥    ≥"
LOCATE 13, 10
PRINT "≥        0-Instructions                     ≥    ≥"
LOCATE 14, 10
PRINT "≥                                           ≥    ≥"
LOCATE 15, 10
PRINT "≥        1-Exam                             ≥    ≥"
LOCATE 16, 10
PRINT "≥                                           ≥    ≥"
LOCATE 17, 10
PRINT "≥        2-Tables                           ≥    ≥"
LOCATE 18, 10
PRINT "≥                                           ≥    ≥"
LOCATE 19, 10
PRINT "≥        3-Game(1st Exam)                   ≥    ≥"
LOCATE 20, 10
PRINT "≥                                           ≥    ≥"
LOCATE 21, 10
PRINT "≥        4-Calculator                       √ƒƒƒƒŸ"
LOCATE 22, 10
PRINT "≥                                           ≥"
LOCATE 23, 10
PRINT "≥        5-Exit                             ≥"
LOCATE 24, 10
PRINT "¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ"

PAINT (100, 200), 1, 14
PAINT (0, 0), 8, 14
PAINT (160, 150), 2, 14
A$ = ""
DO
A$ = INKEY$
LOOP WHILE A$ = ""
TIMER OFF
LOCATE 25, 19: PRINT A$
IF A$ = CHR$(27) THEN ex
IF A$ = "J" THEN EQ
IF A$ = "0" THEN INS
IF A$ = "1" THEN GOSUB Exam
IF A$ = "2" THEN TABLA
IF A$ = "3" THEN GOTO GAME
IF A$ = "4" THEN CALC
IF A$ = "5" THEN ex
GOTO MENU

Exam:
KEY(4) ON
ON KEY(4) GOSUB JORDI
SCREEN 0
CLS
90
COLOR 3
LOCATE 1, 1
PRINT "We are going to made a exam. I need the difficult that you want."
PRINT "1- For low difficult and low effect"
PRINT "2- For Middle difficult and Middle Game"
PRINT "3- For High difficult and High Game"
PRINT "F4 AND ENTER FOR EXIT"
IF T = 1 THEN GOTO MENU
PRINT "Now? "; : B$ = INPUT$(1)
IF B$ = "1" THEN T = 1: GOTO EXAM1
IF B$ = "2" THEN T = 1: GOTO exam2
IF B$ = "3" THEN T = 1: GOTO exam3
IF B$ = "J" THEN PRINT "SALUDOS JSM": PLAY "O1ABCEG": G = 1: GOTO MENU ELSE GOTO 90
EXAM1:
CLS

1 :
IF A > 10 AND E < 5 THEN
H = 1
PRINT "APROBASTE"
PLAY "O2L10CDEFGAB"
GOTO 9
END IF

IF A > 10 AND E >= 5 THEN
H = 0
PRINT "NO APROBASTE"
BEEP
BEEP
GOTO 9
END IF
F1% = RND * 10
F2% = RND * 10
IF F2% > F1% THEN SWAP F1%, F2%
LOCATE 1, 12: PRINT "                    "
LOCATE 1, 1
PRINT F1%; " "; "*"; " "; F2%; " ";
INPUT ; " = ", R%
IF R% <> F1% * F2% THEN
LOCATE 5, 1
PRINT "MAL 1 ERROR"; " "; "ERA"; " "; F1% * F2%
BEEP: BEEP
E = E + 1
END IF
LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

IF R% = F1% * F2% THEN
LOCATE 5, 1: PRINT "≠BIEN!!!!!                                      "
PLAY "O0 L10 C D E F"
A = A + 1
END IF

LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

2 :
IF A > 10 AND E < 5 THEN
H = 1
PRINT "APROBASTE"
PLAY "O2L10CDEFGAB"
GOTO 9
END IF

IF A > 10 AND E >= 5 THEN
H = 0
PRINT "NO APROBASTE"
BEEP
BEEP
GOTO 9
END IF
F1% = RND * 10
F2% = RND * 10
IF F2% = 0 THEN F2% = 1
IF F2% > F1% THEN SWAP F1%, F2%
R1 = F1% / F2%
IF F2% = 0 THEN F2% = 1
LOCATE 1, 12: PRINT "                    "
LOCATE 1, 1
PRINT F1%; " "; ":"; " "; F2%; " ";
LOCATE 1, 12: PRINT "                    "
LOCATE 1, 11
INPUT ; " = ", R
IF R <> R1 THEN
LOCATE 5, 1
PRINT "MAL 1 ERROR"; " "; "ERA"; " "; R1
BEEP: BEEP
E = E + 1
END IF
LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

IF R = R1 THEN
LOCATE 5, 1: PRINT "≠BIEN!!!!!                                  "
PLAY "O0 L10 C D E F"
A = A + 1
END IF

LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

3 :
IF A > 10 AND E < 5 THEN
H = 1
PRINT "APROBASTE"
PLAY "O2L10CDEFGAB"
GOTO 9
END IF

IF A > 10 AND E >= 5 THEN
H = 0
PRINT "NO APROBASTE"
BEEP
BEEP
GOTO 9
END IF

F1% = RND * 10
F2% = RND * 10
IF F2% > F1% THEN SWAP F1%, F2%
LOCATE 1, 12: PRINT "                    "
LOCATE 1, 1
PRINT F1%; " "; "+"; " "; F2%; " ";
INPUT ; " = ", R%
IF R% <> F1% + F2% THEN
LOCATE 5, 1
PRINT "MAL 1 ERROR"; " "; "ERA"; " "; F1% + F2%
BEEP: BEEP
E = E + 1
END IF
LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

IF R% = F1% + F2% THEN
LOCATE 5, 1: PRINT "≠BIEN!!!!!                                  "
PLAY "O0 L10 C D E F"
A = A + 1
END IF

LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

4 :
IF A > 10 AND E < 5 THEN
H = 1
PRINT "APROBASTE"
PLAY "O2L10CDEFGAB"
GOTO 9
END IF

IF A > 10 AND E >= 5 THEN
H = 0
PRINT "NO APROBASTE"
BEEP
BEEP
GOTO 9
 END IF

F1% = RND * 10
F2% = RND * 10
IF F2% > F1% THEN SWAP F1%, F2%
LOCATE 1, 12: PRINT "                    "
LOCATE 1, 1
PRINT F1%; " "; "-"; " "; F2%; " ";
INPUT ; " = ", R%
IF R% <> F1% - F2% THEN
LOCATE 5, 1
PRINT "MAL 1 ERROR"; " "; "ERA"; " "; F1% + F2%
BEEP: BEEP
E = E + 1
END IF
LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

IF R% = F1% - F2% THEN
LOCATE 5, 1: PRINT "≠BIEN!!!!!                                  "
PLAY "O0 L10 C D E F"
A = A + 1
END IF

LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A
GOSUB 1
9 :
GOTO MENU

exam2:
CLS
10 :
IF A > 10 AND E < 5 THEN
H = 1
PRINT "APROBASTE"
PLAY "O2L10CDEFGAB"
GOTO 901
END IF

IF A > 10 AND E >= 5 THEN
H = 0
PRINT "NO APROBASTE"
BEEP
BEEP
GOTO 901
END IF
F1% = RND * 100
F2% = RND * 10
IF F2% > F1% THEN SWAP F1%, F2%
LOCATE 1, 12: PRINT "                    "
LOCATE 1, 1
PRINT F1%; " "; "*"; " "; F2%; " ";
INPUT ; " = ", R%
IF R% <> F1% * F2% THEN
LOCATE 5, 1
PRINT "MAL 1 ERROR"; " "; "ERA"; " "; F1% * F2%
BEEP: BEEP
E = E + 1
END IF
LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

IF R% = F1% * F2% THEN
LOCATE 5, 1: PRINT "≠BIEN!!!!!                                      "
PLAY "O0 L10 C D E F"
A = A + 1
END IF

LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

20 :
IF A > 10 AND E < 5 THEN
H = 1
PRINT "APROBASTE"
PLAY "O2L10CDEFGAB"
GOTO 901
END IF

IF A > 10 AND E >= 5 THEN
H = 0
PRINT "NO APROBASTE"
BEEP
BEEP
GOTO 901
END IF
F1% = RND * 100
F2% = RND * 10
IF F2% > F1% THEN SWAP F1%, F2%
IF F2% = 0 THEN F2% = 1
R1 = F1% / F2%
LOCATE 1, 12: PRINT "                    "
LOCATE 1, 1
PRINT F1%; " "; ":"; " "; F2%; " ";
LOCATE 1, 12: PRINT "                    "
LOCATE 1, 11
INPUT ; " = ", R
IF R <> R1 THEN
LOCATE 5, 1
PRINT "MAL 1 ERROR"; " "; "ERA"; " "; R1
BEEP: BEEP
E = E + 1
END IF
LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

IF R = R1 THEN
LOCATE 5, 1: PRINT "≠BIEN!!!!!                                  "
PLAY "O0 L10 C D E F"
A = A + 1
END IF

LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

30 :
IF A > 10 AND E < 5 THEN
H = 1
PRINT "APROBASTE"
PLAY "O2L10CDEFGAB"
GOTO 901
END IF

IF A > 10 AND E >= 5 THEN
H = 0
PRINT "NO APROBASTE"
BEEP
BEEP
GOTO 901
END IF

F1% = RND * 100
F2% = RND * 10
IF F2% > F1% THEN SWAP F1%, F2%
LOCATE 1, 12: PRINT "                    "
LOCATE 1, 1
PRINT F1%; " "; "+"; " "; F2%; " ";
INPUT ; " = ", R%
IF R% <> F1% + F2% THEN
LOCATE 5, 1
PRINT "MAL 1 ERROR"; " "; "ERA"; " "; F1% + F2%
BEEP: BEEP
E = E + 1
END IF
LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

IF R% = F1% + F2% THEN
LOCATE 5, 1: PRINT "≠BIEN!!!!!                                  "
PLAY "O0 L10 C D E F"
A = A + 1
END IF

LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

40 :
IF A > 10 AND E < 5 THEN
H = 1
PRINT "APROBASTE"
PLAY "O2L10CDEFGAB"
GOTO 901
END IF

IF A > 10 AND E >= 5 THEN
H = 0
PRINT "NO APROBASTE"
BEEP
BEEP
GOTO 901
 END IF

F1% = RND * 100
F2% = RND * 10
IF F2% > F1% THEN SWAP F1%, F2%
LOCATE 1, 12: PRINT "                    "
LOCATE 1, 1
PRINT F1%; " "; "-"; " "; F2%; " ";
INPUT ; " = ", R%
IF R% <> F1% - F2% THEN
LOCATE 5, 1
PRINT "MAL 1 ERROR"; " "; "ERA"; " "; F1% + F2%
BEEP: BEEP
E = E + 1
END IF
LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

IF R% = F1% - F2% THEN
LOCATE 5, 1: PRINT "≠BIEN!!!!!                                  "
PLAY "O0 L10 C D E F"
A = A + 1
END IF

LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A
GOSUB 10
901 :
GOTO MENU

exam3:
CLS
103 :
IF A > 10 AND E < 5 THEN
H = 1
PRINT "APROBASTE"
PLAY "O2L10CDEFGAB"
GOTO 9013
END IF

IF A > 10 AND E >= 5 THEN
H = 0
PRINT "NO APROBASTE"
BEEP
BEEP
GOTO 9013
END IF
F1% = RND * 100
F2% = RND * 100
IF F2% > F1% THEN SWAP F1%, F2%
LOCATE 1, 12: PRINT "                    "
LOCATE 1, 1
PRINT F1%; " "; "*"; " "; F2%; " ";
INPUT ; " = ", R%
IF R% <> F1% * F2% THEN
LOCATE 5, 1
PRINT "                                                                      "
LOCATE 5, 1
PRINT "MAL 1 ERROR"; " "; "ERA"; " "; F1% * F2%
BEEP: BEEP
E = E + 1
END IF
LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

IF R% = F1% * F2% THEN
LOCATE 5, 1: PRINT "≠BIEN!!!!!                                      "
PLAY "O0 L10 C D E F"
A = A + 1
END IF

LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

203 :
IF A > 10 AND E < 5 THEN
H = 1
PRINT "APROBASTE"
PLAY "O2L10CDEFGAB"
GOTO 9013
END IF

IF A > 10 AND E >= 5 THEN
H = 0
PRINT "NO APROBASTE"
BEEP
BEEP
GOTO 9013
END IF
F1% = RND * 100
F2% = RND * 100
R1 = F1% / F2%
IF F2% > F1% THEN SWAP F1%, F2%
IF F2% = 0 THEN F2% = 1
LOCATE 1, 12: PRINT "                    "
LOCATE 1, 1
PRINT F1%; " "; ":"; " "; F2%; " ";
LOCATE 1, 12: PRINT "                    "
LOCATE 1, 11
INPUT ; " = ", R
IF R <> R1 THEN
LOCATE 5, 1
PRINT "                                                                         "
LOCATE 5, 1
PRINT "MAL 1 ERROR"; " "; "ERA"; " "; R1
BEEP: BEEP
E = E + 1
END IF
LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

IF R = R1 THEN
LOCATE 5, 1: PRINT "≠BIEN!!!!!                                  "
PLAY "O0 L10 C D E F"
A = A + 1
END IF

LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

303 :
IF A > 10 AND E < 5 THEN
H = 1
PRINT "APROBASTE"
PLAY "O2L10CDEFGAB"
GOTO 9013
END IF

IF A > 10 AND E >= 5 THEN
H = 0
PRINT "NO APROBASTE"
BEEP
BEEP
GOTO 9013
END IF

F1% = RND * 100
F2% = RND * 100
IF F2% > F1% THEN SWAP F1%, F2%
LOCATE 1, 12: PRINT "                    "
LOCATE 1, 1
PRINT F1%; " "; "+"; " "; F2%; " ";
INPUT ; " = ", R%
IF R% <> F1% + F2% THEN
LOCATE 5, 1
PRINT "                                                                 "
LOCATE 5, 1
PRINT "MAL 1 ERROR"; " "; "ERA"; " "; F1% + F2%
BEEP: BEEP
E = E + 1
END IF
LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

IF R% = F1% + F2% THEN
LOCATE 5, 1: PRINT "≠BIEN!!!!!                                  "
PLAY "O0 L10 C D E F"
A = A + 1
END IF

LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

403 :
IF A > 10 AND E < 5 THEN
H = 1
PRINT "APROBASTE"
PLAY "O2L10CDEFGAB"
GOTO 9013
END IF

IF A > 10 AND E >= 5 THEN
H = 0
PRINT "NO APROBASTE"
BEEP
BEEP
GOTO 9013
 END IF

F1% = RND * 100
F2% = RND * 100
IF F2% > F1% THEN SWAP F1%, F2%
LOCATE 1, 12: PRINT "                    "
LOCATE 1, 1
PRINT F1%; " "; "-"; " "; F2%; " ";
INPUT ; " = ", R%
IF R% <> F1% - F2% THEN
LOCATE 5, 1
PRINT "                                                                 "
LOCATE 5, 1
PRINT "MAL 1 ERROR"; " "; "ERA"; " "; F1% + F2%
BEEP: BEEP
E = E + 1
END IF
LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A

IF R% = F1% - F2% THEN
LOCATE 5, 1: PRINT "≠BIEN!!!!!                                  "
PLAY "O0 L10 C D E F"
A = A + 1
END IF

LOCATE 2, 1
PRINT "Errores:"; " "; E
LOCATE 3, 1
PRINT "Aciertos:"; " "; A
GOSUB 103
9013 :
GOTO MENU


GAME:
IF G = 1 THEN
DO
CLS
INPUT "CHEAT, 1-Effect, 2-TennisC, 3-Steam (1-3) ", F
IF F = 1 THEN GOTO J1
IF F = 2 THEN GOTO J2
IF F = 3 THEN GOTO J3
LOOP
CLS
END IF

IF H = 0 THEN PRINT "NO NO NO!! EXAM!!!": BEEP: BEEP: GOTO MENU
IF H = 1 THEN
IF B$ = "1" THEN GOTO J1
IF B$ = "2" THEN GOTO J2
IF B$ = "3" THEN GOTO J3
END IF


J2:
DO
CLS
INPUT "Nivel de dificultad? (1/2), 3 PARA SALIR|Durante el juego es Esc ", A%
IF A% = 1 THEN J% = 1: EXIT DO
IF A% = 2 THEN J% = 1.5: EXIT DO
IF A% = 3 THEN GOTO JORDI2
LOOP

SCREEN 12
PAINT (0, 0), 2
CIRCLE (159, 99), 10, 14
PAINT (159, 99), 14, 14
LINE (149, 99)-(159, 109), 0
DIM D(1000)
GET (147, 59)-(172, 99 + 10), D
CLS
PAINT (0, 0), 2
LINE (5, 5)-(10, 33), 14, BF
DIM P(1000)
GET (0, 0)-(9, 40), P
KEY(11) ON
KEY(14) ON
ON KEY(11) GOSUB UP
ON KEY(14) GOSUB DOWN
SCREEN 12
CLS
X% = 10
Y% = 10
U% = 10
U1% = 10
P2% = 620
CLS
V = 0

IN:
CLS
IF P = 30 THEN GOTO WIN
IF V = 10 THEN GOTO LOSE
Y% = RND * 350 + 12
IF UR = 1 THEN U% = Y% + 20
DO
IF INKEY$ = CHR$(27) THEN GOTO MENU
LOCATE 1, 20: PRINT "Computer: "; V
LOCATE 2, 20: PRINT "Score: "; P
IF INKEY$ = CHR$(27) THEN GOTO MENU
PAINT (0, 0), 2
LINE (319, 479)-(319, 0), 5
IF INKEY$ = CHR$(27) THEN GOTO MENU

IF UR = 0 THEN
X% = X% + J%
Y% = Y% + .5
END IF

IF UR = 1 THEN
X% = X% - J%
Y% = Y% - .5
END IF

IF INKEY$ = CHR$(27) THEN GOTO MENU
'Y = Y + .25
'PAINT (0, 0), 0, 7
IF U% > 425 THEN
CLS
U% = 20
END IF
IF INKEY$ = CHR$(27) THEN GOTO MENU
IF U% < 10 THEN
CLS
U% = 420
END IF
IF INKEY$ = CHR$(27) THEN GOTO MENU
IF X% < 5 THEN
SOUND 600, 1
UR = 0
GOTO IN
END IF
IF INKEY$ = CHR$(27) THEN GOTO MENU
IF X% > 610 AND Y% = U% - 30 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% - 29 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF

IF X% > 610 AND Y% = U% - 28 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF

IF X% > 610 AND Y% = U% - 27 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF

IF X% > 610 AND Y% = U% - 26 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF

IF X% > 610 AND Y% = U% - 25 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF

IF X% > 610 AND Y% = U% - 24 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF

IF X% > 610 AND Y% = U% - 23 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF

IF X% > 610 AND Y% = U% - 22 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF

IF X% > 610 AND Y% = U% - 21 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF

IF X% > 610 AND Y% = U% - 20 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF INKEY$ = CHR$(27) THEN GOTO MENU
IF X% > 610 AND Y% = U% - 19 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF INKEY$ = CHR$(27) THEN GOTO MENU
IF X% > 610 AND Y% = U% - 18 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% - 17 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF

IF INKEY$ = CHR$(27) THEN GOTO MENU
IF X% > 610 AND Y% = U% - 16 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF INKEY$ = CHR$(27) THEN GOTO MENU

IF X% > 610 AND Y% = U% - 15 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF

IF INKEY$ = CHR$(27) THEN GOTO MENU
IF X% > 610 AND Y% = U% - 14 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF INKEY$ = CHR$(27) THEN GOTO MENU
IF X% > 610 AND Y% = U% - 13 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF INKEY$ = CHR$(27) THEN GOTO MENU
IF X% > 610 AND Y% = U% - 12 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF INKEY$ = CHR$(27) THEN GOTO MENU

IF X% > 610 AND Y% = U% - 11 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% - 10 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% - 9 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% - 8 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF

IF X% > 610 AND Y% = U% + 10 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% + 11 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% + 12 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% + 13 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% + 14 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF

IF X% > 610 AND Y% = U% + 15 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF

IF X% > 610 AND Y% = U% + 16 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% + 17 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% + 18 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% + 19 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% + 20 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% + 21 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% + 22 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% + 23 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% + 24 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% + 25 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% + 26 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% + 27 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% + 28 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% + 29 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF
IF X% > 610 AND Y% = U% + 30 THEN
LOCATE 1, 1: PRINT "good!"
SOUND 500, 1
UR = 1
P = P + 1
GOTO IN
END IF

IF INKEY$ = CHR$(27) THEN GOTO MENU
IF X% > 611 AND Y% <> U% THEN
LOCATE 1, 1
PRINT "Out!!"
PLAY "cda"
UR = 1
CLS
V = V + 1
GOTO IN
END IF
IF INKEY$ = CHR$(27) THEN GOTO MENU
PUT (P2%, U%), P, PSET
PUT (0, Y% + 20), P, PSET
PUT (X%, Y%), D, PSET
HoraInicio = TIMER
'DO
'Tiempotranscurrido = TIMER - HoraInicio
'IF INKEY$ = CHR$(27) THEN GOTO MENU
'LOOP WHILE Tiempotranscurrido < J%
'Tiempotranscurrido = 0
'HoraInicio = 0

LOOP
GOTO JORDI2

UP:
U% = U% - 4
RETURN

DOWN:
U% = U% + 4
RETURN

WIN:
CLS
PRINT "YOU WIN THE COMPETITION"
IF A% = 2 THEN
PRINT "YOU WIN ACCESS TO STEAM"
B$ = "3"
END IF
PLAY "O2L4ABCEG"
GOTO MENU

LOSE:
CLS
PRINT " YOU LOSE THE COMPETITION"
PLAY "L4O0CD"
GOTO MENU

J1:
CLS
INPUT "Frequencia, Canci¢n Random, o tocas tu (F/C/P) ", G$
G$ = UCASE$(G$)
IF G$ = "C" THEN
DIM A$(14)
A$(1) = "C"
A$(2) = "D"
A$(3) = "E"
A$(4) = "F"
A$(5) = "G"
A$(6) = "A"
A$(7) = "B"
A$(8) = "O0"
A$(9) = "O1"
A$(10) = "O2"
A$(11) = "N5"
A$(12) = "N5"
A$(13) = "N1"
A$(14) = "N5"
DO
X% = RND * 13 + 1
PLAY A$(X%)
LOOP WHILE INKEY$ <> CHR$(27)
END IF

IF G$ = "F" THEN
CLS
X% = 37
DO
LOCATE 1, 1: PRINT X%; " Herz(s)"
LOCATE 2, 1: PRINT "PULSA UNA TECLA CUANDO NO OIGAS"
SOUND X%, 1
X% = X% + 6
IF X% = 32767 THEN EXIT DO
T$ = INKEY$
LOOP WHILE T$ = ""
'sound
PRINT "HAS LLEGADO HASTA "; X%; " hertz(s)"
END IF
DO
LOOP WHILE INKEY$ = ""

IF G$ = "P" THEN
SCREEN 12
PALETTE 0, 15
c = 30
DO
c = c + 1
IF c = 255 THEN c = 30
LINE (2, 2)-(120, 50), c, BF
LOCATE 1, 1: PRINT "PULSE UNA TECLA"
DIM G(5100)
GET (0, 0)-(122, 60), G
CLS
X% = RND * 180
Y% = RND * 130
PUT (X%, Y%), G, XOR
FOR X = 1 TO 1000
NEXT X
LOOP WHILE INKEY$ = ""
CLS
DIM U$(9)
U$(1) = "D"
U$(2) = "E"
U$(3) = "F"
U$(4) = "G"
U$(5) = "A"
U$(6) = "B"
U$(7) = "O0"
U$(8) = "O2"
U$(9) = "O4"
U$(0) = "C"
LOCATE 1, 1: PRINT "Los n£meros son las notas (0-6), excepto 7, 8"
LOCATE 2, 1: PRINT "y 9 que cambian de octava. ESC SALIR."
LOCATE 4, 1: PRINT "OCTAVAS: "
LOCATE 5, 1: PRINT "7=Octava 0, Q=O1, 8=O2, W=O3, 9=O4, E=O5, R=O6"
141 F$ = ""
DO
F$ = INKEY$
F$ = UCASE$(F$)
LOOP WHILE F$ = ""
IF F$ = "Q" THEN PLAY "O1"
IF F$ = "W" THEN PLAY "O3"
IF F$ = "E" THEN PLAY "O5"
IF F$ = "R" THEN PLAY "O6"
PLAY "L22"
IF F$ = CHR$(27) THEN GOTO MENU
c = VAL(F$)
PLAY U$(c)
GOTO 141
END IF
GOTO MENU

J3:
KEY(1) ON
ON KEY(1) GOSUB PAUSE
V = 3
SCREEN 12

REM SUBRUTINA DIBUJO NAVE
X1 = 40
Y1 = 200
CLS
PAINT (0, 0), 4
LINE (30, 30)-(60, 5), 14
LINE (60, 5)-(90, 30), 14
LINE (90, 30)-(65, 30), 3
LINE (65, 30)-(30, 30), 5
DIM B(3000)
GET (27, 34)-(100, 0), B
X = 100
Y = 50
CLS
KEY(1) ON
KEY(11) ON
KEY(12) ON
KEY(13) ON
KEY(14) ON
ON KEY(11) GOSUB ARR
ON KEY(14) GOSUB ABA
ON KEY(12) GOSUB IZQ
ON KEY(13) GOSUB DER
DO
PAINT (0, 0), 4
PUT (X, Y), B, PSET
GOSUB JAULA
GOSUB suelo
GOSUB COM1
Y = Y + 1
    HoraInicio = TIMER
    WHILE Tiempotranscurrido < .0025
        Tiempotranscurrido = TIMER - HoraInicio
    IF INKEY$ = CHR$(27) THEN GOTO MENU
    WEND
HoraInicio = 0
Tiempotranscurrido = 0
LOOP

COM1:
IF Y > 360 THEN GOSUB CAIGO
IF Y < 2 THEN GOSUB SALGO
IF V < 0 THEN GOTO MIERDA
IF Y < 2 THEN GOSUB SALGO
IF X < 2 THEN GOSUB SALGO
SCREEN 12
RETURN

ARR:
SOUND 37, .1
Y = Y - 2
RETURN

ABA:
SOUND 37, .1
Y = Y + 2
RETURN

suelo:
REM SUBRUTINA DE SUELO MOVEDIZO
FOR Y1 = 359 TO 479
LINE (0, Y1)-(639, Y1), c
c = RND * 15
NEXT
SCREEN 12
RETURN

CAIGO:
SCREEN 12
CLS
PRINT "Ca°da, vida menos"; ". "; "Quedan"; V; " "; "Vidas"
PLAY "O2L10BBBCADE"
V = V - 1
Y = 50
SCREEN 12
RETURN

IZQ:
SOUND 37, .1
X = X - 2
RETURN

DER:
SOUND 37, .1
X = X + 2
RETURN


SALGO:
SCREEN 12
CLS
X = 100
Y = 50
PRINT "HAS SALIDO DE LA PANTALLA, TE QUEDAN"; " "; V; "VIDAS"
PLAY "L10O2DDADDA"
V = V - 1
SCREEN 12
RETURN


MIERDA:
SCREEN 12
PAINT (0, 0), c
c = RND * 255
PRINT CHR$(c)
PRINT "MUERTE"
PLAY "MFo2L60ABCEGFADEDAEDFGBADEADEEDFFDCDBFEDEFCDEAAEBEAADFEG"
GOTO MENU

JAULA:
LOCATE 1, 16: PRINT "VIDAS: ";
FOR WWW = 1 TO V
PRINT ; CHR$(1);
NEXT WWW
COLOR 3
LOCATE 1, 3
PRINT "⁄ƒƒƒƒƒƒƒƒƒƒø"
LOCATE 2, 3
PRINT "≥          ≥"
LOCATE 3, 3
PRINT "≥   ⁄ƒƒø   ≥"
LOCATE 4, 3
PRINT "≥   ≥  ≥   ≥"
LOCATE 5, 3
PRINT "¿          Ÿ"

IF K = 0 THEN
LOCATE 5, 3: PRINT "¿ƒƒƒƒƒƒƒƒƒƒ"
END IF
IF K = 0 THEN
IF X > 522 AND Y < 20 THEN
PLAY "AC"
K = 1
CLS
PAINT (0, 0), 4
END IF
END IF

IF K = 0 THEN
LOCATE 3, 70: COLOR 3: PRINT CHR$(190)
END IF

'CIRCLE (106, 35), 1
IF Y < 60 AND X < 70 AND K = 0 THEN GOSUB CHOQUE
IF Y < 60 AND X < 70 AND K = 1 THEN GOTO GOOD
RETURN

CHOQUE:
SCREEN 12
CLS
PRINT "NO PUEDES ENTRAR, TE HAN MATADO. COGE LA LLAVE"
V = V - 1
PRINT "VIDAS: "; V
BEEP
BEEP
Y = 50
X = 100
SCREEN 12
RETURN

GOOD:
CLS
SCREEN 13
PLAY "o2l10cfedab"
fila = 9
DO
c = c + 1
IF c > 255 THEN c = 0
COLOR c
'CHR$
PRINT ; " "; "€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"; " ";
FOR H = 1 TO 900
NEXT
LOOP WHILE INKEY$ = ""
SCREEN 12
PRINT "MUY BIEN!!!!!!!!!!!!"
PRINT "HAS LIBERADO A LA PRINCESA"
PRINT "Ganas Acceso a todos los juegos!"
G = 1
PLAY "O1L10ABCEG"
GOTO MENU


PAUSE:
KEY(1) OFF
KEY(11) OFF
KEY(12) OFF
KEY(13) OFF
KEY(14) OFF
DO
COLOR 15
LOCATE 15, 20: PRINT "PAUSA"
FOR T = 0 TO 1000
IF INKEY$ <> "" THEN EXIT DO
NEXT T
COLOR 0
LOCATE 15, 20: PRINT "PAUSA"
LOOP WHILE INKEY$ = ""
KEY(11) ON
KEY(12) ON
KEY(13) ON
KEY(14) ON
KEY(1) ON
KEY(4) ON
CLS
PAINT (0, 0), 4
RETURN
INY:
SCREEN 12
CLS
X = 1
DIM AF$(4)
A$(1) = " PROGRAMADO POR JSM ENTERTAINMENT SOFTWARE "
A$(2) = " JORDI SESMERO MOLINA............BARCELONA "
A$(3) = " PROGRAMADO EN........MICROSOFT QUICKBASIC "
A$(4) = " MUSICAS POR.................JORDI SESMERO "
J:
c% = RND * 15
COLOR c%
IF c% = 0 THEN c% = 1
F% = RND * 15
IF F% = c% THEN F% = RND * 15
PAINT (0, 0), F%, c%
F% = 1
SOUND 2000, 1
DO
LOCATE 15, X: PRINT AF$(F%)
IF X >= 35 THEN
GOTO H
END IF
IF X < 35 THEN
X = X + 1
END IF
G = 0
DO
G = G + 1
IF G > 2000 THEN EXIT DO
IF INKEY$ <> "" THEN GOTO 44
LOOP
LOOP

H:
c% = RND * 15
COLOR c%
IF c% = 0 THEN c% = 1
F% = RND * 15
IF F% = c% THEN F% = RND * 15
PAINT (0, 0), F%, c%

F% = 2
SOUND 5000, 1
DO
X = X - 1
LOCATE 15, X: PRINT AF$(F%)
IF X = 1 THEN
GOTO JU
END IF

G = 0
DO
G = G + 1
IF G > 2000 THEN EXIT DO
IF INKEY$ <> "" THEN GOTO 44
LOOP
LOOP

JU:
c% = RND * 15
COLOR c%
IF c% = 0 THEN c% = 1
F% = RND * 15
IF F% = c% THEN F% = RND * 15
PAINT (0, 0), F%, c%

F% = 3
SOUND 2000, 1
DO
LOCATE 15, X: PRINT AF$(F%)
IF X >= 35 THEN
GOTO HY
END IF
IF X < 35 THEN
X = X + 1
END IF
G = 0
DO
G = G + 1
IF G > 2000 THEN EXIT DO
IF INKEY$ <> "" THEN GOTO 44
LOOP
LOOP

HY:
c% = RND * 15
COLOR c%
IF c% = 0 THEN c% = 1
F% = RND * 15
IF F% = c% THEN F% = RND * 15
PAINT (0, 0), F%, c%

F% = 4
SOUND 5000, 1
DO
X = X - 1
LOCATE 15, X: PRINT AF$(F%)
IF X = 1 THEN
GOTO J
END IF

G = 0
DO
G = G + 1
IF G > 2000 THEN EXIT DO
IF INKEY$ <> "" THEN GOTO 44
LOOP
LOOP

44 :
GOTO MENU

SUB CALC
CALC:
CLS
Y1 = 0: Y = 40
DO
Y1 = Y1 + 45: Y = Y + 45
IF Y1 > 250 THEN
CLS
Y1 = 10
Y = 40
END IF
LINE (0, 15)-(300, 15): LINE (300, 15)-(300, 300): LINE (300, 300)-(0, 300)
LINE (0, 300)-(0, 0)
LINE (0, Y1)-(40, Y), , BF
LINE (40, Y1)-(80, Y), 3, BF
LINE (80, Y1)-(120, Y), 14, BF
LINE (120, Y1)-(160, Y), 3, BF
LINE (160, Y1)-(200, Y), 14, BF
LINE (200, Y1)-(240, Y), 3, BF
LINE (240, Y1)-(300, Y), 14, BF
LINE (0, 439)-(300, 319), 14, B
LOCATE 24, 5: PRINT "                                                     "
LOCATE 25, 5: PRINT "                                                     "
LOCATE 26, 5: PRINT "                                                     "
LOCATE 24, 5: INPUT "F1: ", F1
LOCATE 25, 5: INPUT "F2: ", F2
LOCATE 1, 15
PRINT "Sumado(S), Restado(R), Multiplicado(M),  Dividido(D) u Omitir(O)";
O$ = UCASE$(INPUT$(1))
PRINT ; O$
LINE (0, 15)-(300, 15): LINE (300, 15)-(300, 300): LINE (300, 300)-(0, 300)
IF O$ = "O" THEN GOTO 222
IF O$ = "S" THEN
R = F1 + F2
LOCATE 26, 5: PRINT "da: "; R
DO
LOOP WHILE INKEY$ = ""
END IF

IF O$ = "R" THEN
R = F1 - F2
LOCATE 26, 5: PRINT "da: "; R
DO
LOOP WHILE INKEY$ = ""

END IF

IF O$ = "M" THEN
R = F1 * F2
LOCATE 26, 5: PRINT "da: "; R
DO
LOOP WHILE INKEY$ = ""

END IF

IF O$ = "D" THEN
IF F2 = 0 THEN
878 LOCATE 27, 5: PRINT "                                                     "
LOCATE 27, 5
PRINT "Error, da infinito"
INPUT "Digalo ahora otro n£mero ", F2
IF F2 = 0 THEN GOTO 878
END IF
R = F1 / F2
LOCATE 26, 5: PRINT "da: "; R
DO
LOOP WHILE INKEY$ = ""
CLS
END IF

LOOP

222 :
END SUB

SUB EQ
CLS
PRINT "Resoluci¢n de equaciones:"
PRINT
PRINT "Un padre tiene el doble de edad que su 1er hijo y Çste a la vez"
PRINT "tiene el triple de edad que el 2ß hijo. Si entre todas las edades"
PRINT "suman ochenta a§os, ®cu†l ser† la edad de cada uno?"
PRINT
PRINT "Primero hemos de plantear el problema:"
PRINT "La edad del padre la llamaremos X, la del hijo Y y la del 2ß hijo Z"
PRINT
PRINT "La edad del padre es el doble que la del hijo, por tanto:"
PRINT "X = 2 * Y"
PRINT "La edad del hijo es el triple que la de su hermano menor:"
PRINT "Y = 3 * Z"
PRINT "La suma de las tres es ochenta: "
PRINT "X + Y + Z = 80"
PRINT
PRINT "Se puede practicar el mÇtodo de sustituci¢n, en el cual se deja sola"
PRINT "una variable y se sustituye en la otra ecuaci¢n, cuando da el 2ß"
PRINT "resultado se sustituye la variable en la primera y entonces se usa"
PRINT "la 3¶ ecuaci¢n del sistema. |pulsa una tecla| "
DO
LOOP WHILE INKEY$ = ""
CLS
COLOR 3
PRINT
PRINT "Y = 3 * Z (1)"
PRINT "X = 2 * Y (2)"
PRINT
PRINT "Sustituimos en X + Y + Z las variables X e Y"
PRINT "2y + 3z + z = 80"
PRINT "2 * 3z + 3z + z = 80"
PRINT "6z + 3z + z = 80"
PRINT "10z = 80"; "          "; "z = 80 / 10"; "         "; "Z = 8 a§os el hijo menor"
PRINT
PRINT "Hallamos la Y: "
PRINT "(1) Y = 3 * 8"; "       "; "Y = 24 a§os el hijo mayor"
PRINT
PRINT "Hayamos la X: "
PRINT "(2) X = 2 * 24"; "       "; "X = 48 a§os tiene el padre"
PRINT
PRINT "El mÇtodo m†s usado es del de sustituci¢n, aunque est† el de igualaci¢n"
PRINT "de variables (Y = X y X = 2; Y = 2) y  el de reducci¢n: "
PRINT "(Si X + Y = 24 [y] - Z + Y = - 12, cambiamos el signo en la de abajo y"
PRINT "las restamos, dar°a X + Z = 36)"

END SUB

SUB ex
SCREEN 0
LOCATE 1, 3
COLOR , 9
PRINT "                                                                   "
LOCATE 2, 1
'CHR$
COLOR , 9
PRINT "…ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª  "
PRINT "∫                                                                 ∫  "
PRINT "∫                                                                 ∫  "
PRINT "∫                Gracias por utilizar Special Team 4.01           ∫  "
PRINT "∫                Ha sido creado desde cero con Qbasic             ∫  "
PRINT "∫                                                                 ∫  "
PRINT "∫                                                                 ∫  "
PRINT "∫                JSM Entertaintment Software                      ∫  "
PRINT "∫                                                                 ∫  "
PRINT "∫                                                                 ∫  "
PRINT "∫                                                                 ∫  "
PRINT "∫     êste es un producto Software, hecho por Jordi Sesmero y     ∫  "
PRINT "∫     no debe ser distribuido ilegalmente.                        ∫  "
PRINT "∫                                                                 ∫  "
PRINT "∫                                                                 ∫  "
PRINT "∫                                                                 ∫  "
PRINT "∫                                                                 ∫  "
PRINT "∫                                                                 ∫  "
PRINT "∫                                                                 ∫  "
PRINT "»ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº"
END
END SUB

SUB INS
4500 :
CLS
SCREEN 12
'chr$
COLOR 2
PRINT "         ≤≤≤≤≤≤   ≤≤≤≤≤≤   ≤≤≤≤≤≤  ≤≤≤≤≤≤  ≤≤  ≤≤≤≤≤≤  ≤≤     "
PRINT "         ≤≤       ≤≤  ≤≤   ≤≤      ≤≤      ≤≤  ≤≤  ≤≤  ≤≤  "
PRINT "         ≤≤≤≤≤≤   ≤≤≤≤≤≤   ≤≤≤≤    ≤≤      ≤≤  ≤≤  ≤≤  ≤≤  "
PRINT "             ≤≤   ≤≤       ≤≤      ≤≤      ≤≤  ≤≤≤≤≤≤  ≤≤  "
PRINT "         ≤≤≤≤≤≤   ≤≤       ≤≤≤≤≤≤  ≤≤≤≤≤≤  ≤≤  ≤≤  ≤≤  ≤≤≤≤≤≤    "
PRINT
PRINT
PRINT "         ≤≤≤≤≤≤   ≤≤≤≤≤≤   ≤≤≤≤≤≤  ≤≤   ≤≤"
PRINT "           ≤≤     ≤≤       ≤≤  ≤≤  ≤≤≤ ≤≤≤"
PRINT "           ≤≤     ≤≤≤≤     ≤≤  ≤≤  ≤≤ ≤ ≤≤"
PRINT "           ≤≤     ≤≤       ≤≤≤≤≤≤  ≤≤   ≤≤"
PRINT "           ≤≤     ≤≤≤≤≤≤   ≤≤  ≤≤  ≤≤   ≤≤"
PRINT
PRINT "         ≤≤  ≤≤   ≤≤≤≤≤≤   ≤≤≤≤≤≤"
PRINT "         ≤≤≤≤≤≤   ≤≤  ≤≤   ≤≤  ≤≤"
PRINT "             ≤≤   ≤≤  ≤≤   ≤≤  ≤≤"
PRINT "             ≤≤ ≤ ≤≤≤≤≤≤   ≤≤≤≤≤≤"
PRINT
PRINT "Presione Una Tecla Para Ver Instrucciones"
DO
LOOP WHILE INKEY$ = ""
CLS
PRINT "0-Salir"
PRINT "1-REQUERIMIENTOS"
PRINT "2-CALCULADORA"
PRINT "3-EXAMEN"
PRINT "4-JUEGOS"
PRINT "5-PROBLEMAS"
G$ = INPUT$(1)
IF G$ = "0" THEN GOTO 600
IF G$ = "1" THEN GOTO 100
IF G$ = "2" THEN GOTO 200
IF G$ = "3" THEN GOTO 300
IF G$ = "5" THEN GOTO 500
IF G$ = "4" THEN GOTO 400 ELSE GOTO 4500
100 CLS
PRINT "1-REQUERIMIENTOS:"
PRINT
PRINT "Se ha concretado los requisitos, intentando adaptarse a la mayor°a"
PRINT "de ordenadores del mercado, por tanto intento que sean m°nimos para"
PRINT "el usuario de PC"
PRINT
PRINT "Todos los juegos hechos por esta compa§°a lo intentar†n, procurando"
PRINT "ser compatibles."
PRINT
PRINT "Requerimientos m°nimos:"
PRINT "Tarjeta VGA 640x480 256 colores m°nimo."
PRINT "Altavoz Interno."
PRINT "Monitor SVGA"
PRINT "Teclado con Keypad (Espa§ol)"
PRINT "MS-DOS por lo menos 3.50"
PRINT
PRINT "Requerimientos recomendados:"
PRINT "Targeta VGA 1024x768 16,8 mill. colores."
PRINT "Altavoz Interno"
PRINT "Pentium (TM)"
PRINT "MS-DOS 6.22"
DO
LOOP WHILE INKEY$ = ""
GOTO 4500

200 CLS
PRINT "2-CALCULADORA"
PRINT "Si el primer n£mero lo pones como cero, puedes salir"
PRINT "Escribes el primer n£mero, pulsas enter, escribes el 2ß y pulsas enter."
PRINT "Sale en la pantalla (Arriba) una pregunta de quÇ tipo de c†lculo, pulsas"
PRINT "la letra entre ParÇntesis y abajo en el recuadro sale el resultado"
PRINT "Este programa es muy sencillo de usar, conforme vayas pasando n£meros"
PRINT "ir†n saliendo unos recuadros que te lo indicar†n."
PRINT "JSM garantiza el buen funcionamiento de sus productos."
DO
LOOP WHILE INKEY$ = ""
GOTO 4500

300 CLS
PRINT "3-EXAMEN"
PRINT
PRINT "Elige el nivel de dificultad, 1-3 y Çsto significar† n£meros m†s altos  "
PRINT "o m†s bajos, con m†s o menos decimales. Los decimales son seis normal-  "
PRINT "mente, si hay detr†s del sexto un n£mero superior a cinco, el sexto deci-"
PRINT "mal se convierte en uno m†s. Hace falta diez aciertos y menos de siete  "
PRINT "errores para aprobar."
PRINT "Existen trucos, lo tuyo es descubrirlos y conseguir jugar a todos los"
PRINT "juegos. Si en el nivel de dificultad 2 se hace una buena partida, te "
PRINT "permite jugar al 3er juego y si en Çste pasa igual, te permite jugar a"
PRINT "todos."
DO
LOOP WHILE INKEY$ = ""
GOTO 4500

400 CLS
PRINT "4-JUEGOS"
PRINT
PRINT "PARA JUGAR DEBES PASAR EL EXAMEN. SEGÈN EL NIVEL DE DIFICULTAD QUE"
PRINT "ELIJAS, SERµ UNO DE LOS SIGUIENTES:"
PRINT
PRINT "NIVEL 1: "
PRINT
PRINT "1)Effect /Piano, controlado por el usuario, se sale con Esc."
PRINT "          La escala musical va desde el 0(DO) hasta el 6(SI) y"
PRINT "          el 7 el 8 y el 9 son para cambiar de Octava o Tono."
PRINT "         /Frecuencia, conozca la frequencia en Hertzs hasta que"
PRINT "          su oido no capte el ultrasonido (no sostenga animales "
PRINT "          como gatos o perros, ellos lo oyen y pueden perder el "
PRINT "          control)."
PRINT "         /Canci¢n Random, el ordenador crea una canci¢n a su manera,"
PRINT "          puede que sea rara, pero divertida."
PRINT
PRINT "Pulse una tecla"
DO
LOOP WHILE INKEY$ = ""
PRINT "NIVEL 2: "
PRINT
PRINT "2)TennisC /Tennis, controlado por el keypad. Flecha arriba y abajo,"
PRINT "           pala derecha, se sale con Q. Debes llegar a trenta puntos"
PRINT "           sin que te gane la computadora. (T£ debes llegar a trenta"
PRINT "           toques y ella a 15 salidas). Si eliges nivel de dificultad"
PRINT "           dos, y ganas, puedes jugar al Steam."
PRINT
PRINT "NIVEL 3: "
PRINT
PRINT "3)STeam /El cl†sico, controlado por el keypad, se sale con Esc."
PRINT "         Debes conseguir la llave sin caer ni perderte por el "
PRINT "         espacio y entar en la nave para salvar a la"
PRINT "         princesa. Si ganas, tienes acceso a todos los juegos."
DO
LOOP WHILE INKEY$ = ""
GOTO 4500

500 CLS
PRINT "5-PROBLEMAS"
PRINT "Si te ves con problemas y el programa no los detecta, sal del programa"
PRINT "pulsando Ctrl+C o Ctrl+Pausa"
DO
LOOP WHILE INKEY$ = ""
GOTO 4500
600 :
END SUB

SUB TABLA
CLS
INPUT "®De quÇ n£mero? ", F%
INPUT "®Hasta cual? ", Y%

FOR T = 1 TO Y%
G% = G% + 1
IF G% = Y% THEN GOTO 444
PRINT F%; " "; "X"; " "; G%; " = "; F% * G%; " "
IF UCASE$(INKEY$) = "Q" THEN GOTO 1222
IF UCASE$(INKEY$) = "Q" THEN GOTO 1222
PRINT F%; " "; "+"; " "; G%; " = "; F% + G%; " "
IF UCASE$(INKEY$) = "Q" THEN GOTO 1222
PRINT F%; " "; "-"; " "; G%; " = "; F% - G%; " "
IF UCASE$(INKEY$) = "Q" THEN GOTO 1222
IF G% = 0 THEN G% = 1
PRINT F%; " "; ":"; " "; G%; " = "; F% / G%; " "
SLEEP 1
IF UCASE$(INKEY$) = "Q" THEN GOTO 1222
NEXT

444 :
DO
PLAY "L10O2ABc"
LOOP WHILE INKEY$ = ""
1222 :
END SUB

