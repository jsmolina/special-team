DECLARE SUB TABLAS ()
DECLARE SUB USER ()
DECLARE SUB LEVEL ()
DECLARE SUB EXAM ()
DECLARE SUB OPTIONS ()
DIM SHARED PROGRAMER AS SINGLE
DIM SHARED LEV AS SINGLE
DIM SHARED S AS SINGLE
DIM SHARED OK AS SINGLE


IF COMMAND$ <> "" THEN
R$ = LCASE$(COMMAND$)
IF R$ = "-?" OR R$ = "-help" OR R$ = "help" OR R$ = "/?" THEN
CLS
COLOR 15, 1
PRINT "(c)1999 JSM SOFTWARE. All Rights Reserved.                                 "
COLOR 7, 0
PRINT
PRINT "Wich this order:"
PRINT "-ns No Sound"
PRINT "-ne No Exam (entry on games) "
PRINT
'mid$
PRINT "Example: STEAM -ns -ne"
END
END IF

IF R$ = "-ns" OR R$ = "-ns -ne" THEN
S = 1
END IF


IF R$ = "-ne" OR MID$(R$, 5, 3) = "-ne" THEN
OK = 4
END IF
JSM = 1
GOTO JHAR
END IF

LEV = 1
S = 0

JHAR:
CLS
COLOR 15, 1
PRINT "(c)1999 JSM SOFTWARE. All Rights Reserved.                                 "
PRINT

IF JSM = 1 THEN
COLOR 7, 0
PRINT "Using Options... "; COMMAND$
END IF
PRINT
COLOR 7, 0
PRINT "Special Team Version 6"
A = TIMER
DO
LOOP WHILE TIMER < A + .5
ON KEY(4) GOSUB INICIO2
KEY(4) ON


'PRINT NAM
'A$ = "Special Team 6.01"
'DO
'A$ = RIGHT$(A$, LEN(A$) - 1) + LEFT$(A$, 1)
'LOCATE 15, 15
'PRINT A$
'A = TIMER
'DO
'LOOP WHILE TIMER < A + .1
'LOOP WHILE INKEY$ = ""
'CLS


INICIO2:
LEV = 1

inicio:
SCREEN 12
'chr$  ษ ผป ศ อ บ
CLS

PAINT (0, 0), 8
COLOR 2
PRINT "ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป"
PRINT "บ                                                                              บ"
PRINT "ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ"
LINE (200, 100)-(480, 400), 0, BF
LINE (150, 130)-(450, 430), 1, BF
YUP:
LOCATE 13, 25
PRINT "1- Examen                   "
LOCATE 15, 25
PRINT "2- Juegos                   "
LOCATE 17, 25
PRINT "3- Calculadora              "
LOCATE 19, 25
PRINT "4- Tablas                   "
LOCATE 21, 25
PRINT "5- Opciones                 "
LOCATE 23, 25
PRINT "6- Salir                    "

IF GH = 0 THEN
COLOR 2
A$ = "Special Team 6.3 (DOS)"
LOCATE 2, 27
FOR X = 1 TO LEN(A$)
B$ = MID$(A$, X, 1)
PRINT ; B$;
A = TIMER
DO
LOOP WHILE TIMER < A + .02
NEXT X
GH = 1
END IF

DF:
IF GH = 1 THEN
LOCATE 2, 27
PRINT "Special Team 6.3 (DOS)"
END IF
A$ = INPUT$(1)

IF A$ = "J" THEN
PLAY "L64 ABCEG"
OK = 4
END IF

IF A$ = CHR$(27) THEN USER
A = VAL(A$)
IF A = 0 THEN GOTO YUP
IF A > 6 THEN GOTO YUP
        IF S = 0 THEN
        SOUND 70, .1
END IF

JUMP:
IF A = 1 THEN EXAM
IF A = 2 THEN GOTO AGMES
IF A = 3 THEN GOTO CALCU
IF A = 4 THEN TABLAS
IF A = 5 THEN OPTIONS
IF A = 6 THEN USER
GOTO inicio:
END

AGMES:
CLS
MENUU:
SCREEN 12
'chr$  ษ ผป ศ อ บ
CLS
PAINT (0, 0), 8
COLOR 2
PRINT "ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป"
PRINT "บ                               Juegos                                         บ"
PRINT "ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ"
LINE (200, 100)-(480, 400), 0, BF
LINE (150, 130)-(450, 430), 1, BF
REW:
LOCATE 13, 25
PRINT "1- Superpiano                "
LOCATE 15, 25
PRINT "2- Special Team Classic      "
LOCATE 17, 25
PRINT "3- La Serpiente              "
LOCATE 19, 25
PRINT "4- Volver                    "
A$ = INPUT$(1)
IF A$ = CHR$(27) THEN GOTO 45
A = VAL(A$)
IF OK = 1 THEN
IF A = 1 THEN GOTO PIANO
END IF

IF OK = 2 THEN
IF A = 1 THEN GOTO PIANO
IF A = 2 THEN GOTO PIANO
END IF

IF OK = 3 THEN
IF A = 1 THEN GOTO PIANO
IF A = 2 THEN GOTO NOTAS
IF A = 3 THEN GOTO SNAKE

END IF

IF OK = 4 THEN
IF A = 1 THEN GOTO PIANO
IF A = 2 THEN GOTO NOTAS
IF A = 3 THEN GOTO SNAKE
ELSE
IF A = 4 THEN GOTO 45
BEEP
GOTO REW
END IF

IF A = 0 THEN GOTO REW
IF A = 4 THEN GOTO 45
IF A > 4 THEN GOTO REW
GOTO REW
PIANO:
CLS
SCREEN 12
PLAY "O2 L17"
PAINT (0, 0), 8
FOR X = 100 TO 400 STEP 50
IF B = 0 THEN
LINE (X, 100)-(X + 50, 300), 15, BF
B = 1
GOTO 1
END IF
IF B = 1 THEN
LINE (X, 100)-(X + 50, 300), 0, BF
B = 0
GOTO 1
END IF
1 NEXT
LOCATE 1, 1
PRINT "Esc->Salir"

LOCATE 10, 16
PRINT "A"
LOCATE 10, 23
PRINT "S"
LOCATE 10, 29
PRINT "D"
LOCATE 10, 35
PRINT "F"
LOCATE 10, 42
PRINT "G"
LOCATE 10, 48
PRINT "H"
LOCATE 10, 54
PRINT "J"

LOCATE 1, 16
PRINT " Q->Oct1"
LOCATE 1, 25
PRINT " W->Oct2"
LOCATE 1, 34
PRINT " E->Oct3"
LOCATE 1, 43
PRINT " R->Oct4"
LOCATE 1, 52
PRINT " T->Oct5"
LOCATE 1, 63
PRINT " Y->Octava6"




FOR X = 300 TO 500 STEP 50

NEXT X

IJA:
DO
A$ = INKEY$
LOOP WHILE A$ = ""
A$ = UCASE$(A$)

IF A$ = CHR$(27) THEN GOTO ff
IF A$ = "A" OR A$ = "1" THEN
PLAY "C"
GOTO IJA
END IF

IF A$ = "S" OR A$ = "2" THEN
PLAY "D"
GOTO IJA
END IF

IF A$ = "D" OR A$ = "3" THEN
PLAY "E"
GOTO IJA
END IF

IF A$ = "F" OR A$ = "4" THEN
PLAY "F"
GOTO IJA
END IF
IF A$ = "G" OR A$ = "5" THEN
PLAY "G"
GOTO IJA
END IF

IF A$ = "H" OR A$ = "6" THEN
PLAY "A"
GOTO IJA
END IF

IF A$ = "J" OR A$ = "7" THEN
PLAY "B"
GOTO IJA
END IF

IF A$ = "Q" THEN PLAY "O1"
IF A$ = "W" THEN PLAY "O2"
IF A$ = "E" THEN PLAY "O3"
IF A$ = "R" THEN PLAY "O4"
IF A$ = "T" THEN PLAY "O5"
IF A$ = "Y" THEN PLAY "O6"
GOTO IJA

ff:
GOTO MENUU

SNAKE:
PLAY "L10"
PU = 0
DIR = 1
XU = 0

F$ = "Û"

G$ = "ÜÜ"
'chr$  þ  Þ
SCREEN 12
'DIM F(10000)
'DIM G(10000)
CLS
'PAINT (0, 0), 1
'LOCATE 1, 1
'PRINT "Û"
'GET (0, 0)-(25, 25), G
'CLS
'PAINT (0, 0), 1
'LOCATE 1, 1
'PRINT "Ü"
'GET (0, 0)-(25, 25), F

    DEF SEG = 0                     ' Turn off CapLock, NumLock and ScrollLock
    KeyFlags = PEEK(1047)
    POKE 1047, &H0
    DEF SEG
COLOR 3
KEY 15, CHR$(0) + CHR$(72)
KEY 16, CHR$(0) + CHR$(80)
KEY 17, CHR$(0) + CHR$(75)
KEY 18, CHR$(0) + CHR$(77)

KEY(15) ON
KEY(16) ON
KEY(17) ON
KEY(18) ON

ON KEY(15) GOSUB UP
ON KEY(16) GOSUB DOWN
ON KEY(17) GOSUB LEFT
ON KEY(18) GOSUB RIGHT



TM# = .15555555#

'put
DIR = 1
Y% = 20
X% = 10
RANDOMIZE TIMER
FS% = FIX(RND * 38)
FX% = FIX(RND * 12)
XS% = RND * (FS% * 2) * 2
YX% = RND * (FX% * 2) * 2
IF YX% > 24 OR YX% < 2 THEN YX% = 10
IF XS% > 78 OR XS% < 2 THEN XS% = 20

LINE (0, 0)-(639, 479), 4, B, &HFF00
LINE (1, 1)-(638, 478), 4, B
DO

'LOCATE 1, 12
'PRINT XS%; YX%
GOSUB RANGEN
'LOCATE 1, 2
'PRINT X%; Y%


IF DIR = 1 OR DIR = 2 THEN
LOCATE Y%, X%
PRINT F$
GOSUB FALL
ELSE
GOSUB FALL
LOCATE Y%, X%
PRINT G$
END IF

A$ = ""
GOSUB FALL
A = TIMER


DO
LOOP WHILE TIMER < A + TM#
GOSUB DIRC
GOSUB FALL
LOOP

UP:
GOSUB FALL
DIR = 1
RETURN

DOWN:
GOSUB FALL
DIR = 2
RETURN
    
LEFT:
GOSUB FALL
DIR = 3
RETURN

RIGHT:
GOSUB FALL
DIR = 4
RETURN

DIRC:
LOCATE Y%, X%
PRINT " "

IF X% > 78 THEN GOTO JJ
LOCATE Y%, X% + 1
PRINT " "
JJ:
IF X < 2 THEN GOTO SALTO
LOCATE Y%, X%
PRINT "  "
IF Y% <= 2 THEN GOTO SALTO
LOCATE Y% - 1, X%
PRINT " "
LOCATE Y% - 1, X%
PRINT " "

LOCATE Y%, X% - 1
PRINT " "

SALTO: ''''''''''''''''''''''''''''''''''''''''''''''''
IF DIR = 1 THEN
Y% = Y% - 2
END IF

IF DIR = 2 THEN
Y% = Y% + 2
END IF

IF DIR = 3 THEN
GOSUB FALL
X% = X% - 2
END IF

IF DIR = 4 THEN
X% = X% + 2
END IF
RETURN 'Vuelve al programa principal


FALL:
IF Y% < 1 OR X% < 1 THEN

SCREEN 13
FOR jyu = 15 TO 18
KEY(jyu) OFF
NEXT

SOUND 37, 2
FOR jyu = 15 TO 18
KEY(jyu) OFF
NEXT

PRINT "Te pillข el monstruo"
DO
LOOP WHILE INKEY$ = ""
GOTO 45
END IF

IF X% > 78 OR Y% > 28 THEN
SCREEN 13
FOR jyu = 15 TO 18
KEY(jyu) OFF
NEXT

CLS

IF S = 0 THEN

FOR jyu = 15 TO 18
KEY(jyu) OFF
NEXT

SOUND 39, 2
PRINT "Caes al precipicio"
END IF
DO
LOOP WHILE INKEY$ = ""

GOTO 45
END IF
RETURN

RANGEN:
LOCATE YX%, XS%
PRINT XU

IF XS% = X% - 1 AND YX% = Y% THEN
FA = 1
GOTO ju
END IF

IF XS% = X% AND YX% = Y% - 1 THEN
FA = 1
GOTO ju
END IF

IF XS% = X% - 1 AND YX% = Y% - 1 THEN
FA = 1
GOTO ju
END IF



IF XS% = X% AND YX% = Y% THEN
ju:
XU = XU + 1
PU = PU + 1
IF S = 0 THEN
SOUND 100, 1
END IF
IF PU = 1 THEN TM# = .1
IF PU = 2 THEN TM# = .06
IF PU = 3 THEN TM# = .03
IF PU = 4 THEN TM# = .01
IF PU = 5 THEN TM# = .005
IF PU = 6 THEN TM# = .0035
IF PU = 7 THEN TM# = .0024
IF PU = 8 THEN TM# = .0021

IF PU = 9 THEN
TM# = .0011
XU = -5
END IF

IF PU = 10 THEN TM# = .002

IF PU = 11 THEN TM# = .0019
IF PU = 12 THEN TM# = .0018
IF PU = 13 THEN TM# = .00171
IF PU = 14 THEN TM# = .00161

IF PU = 15 THEN GOTO LEV2
TM# = TM# - .0005
LOCATE YX%, XS%
PRINT "   "
'screen
RANDOMIZE TIMER
'IMPAR
FS% = FIX(RND * 39)
FX% = FIX(RND * 12)
XS% = RND * (FS% * 2) * 2
YX% = RND * (FX% * 2) * 2
IF YX% > 24 OR YX% < 2 THEN YX% = 20
IF XS% > 78 OR XS% < 2 THEN XS% = 20
IF XS% < 8 OR YX% < 8 THEN
XS% = 20
YS% = 20
END IF

LOCATE YX%, XS%
PRINT XU
IF FA = 1 THEN FA = 0: GOTO SAL
END IF
SAL:
RETURN


LEV2:
FOR i = 11 TO 14
KEY(i) OFF
NEXT
CLS
PRINT "ญญญญญญญญญญญTe has pasado el juego!!!!!!!!!!!"
PU = 0
XU = 0
IF S = 0 THEN
PLAY "MB o3 L8 ED+ED+E o2 B o3 D C L2 o2 A"
PLAY "MB L2 o2 A L8 o3 D C o2 B o3 E  ED  ED"
PLAY "L50 ABCEGAB"
END IF
'chr$
SCREEN 13
FOR X = 1 TO 255
COLOR X
PRINT "ฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒฒ"
NEXT X

NOTAS:

'CHR$
LIVE = 3
CLS
SCREEN 12
PLAY "L15"
INPUT "จDesea leer las instrucciones? (S/N) ", GHT$
IF UCASE$(GHT$) = "N" THEN GOTO YUMP
COLOR 4
CLS
A$ = " Est s dentro del altavoz interno del PC. A ste se le han mezclado"
B$ = " todas las notas musicales (DO,RE,MI,FA,SOL,LA,SI). Deber s conducirlas"
C$ = " una por una hasta la parte superior de la pantalla y dejarlas caer"
D$ = " sobre la caja. Se controla con el KEYPAD. Cada vez ir  m s r pido."

FOR X = 1 TO LEN(A$)
X$ = MID$(A$, X, 1)
PRINT ; X$;
A = TIMER
DO
'PAINT (47, 7), 4, 15
LOOP WHILE TIMER < A + .00002
NEXT X

FOR X = 1 TO LEN(B$)
X$ = MID$(B$, X, 1)
PRINT ; X$;
A = TIMER
DO
LOOP WHILE TIMER < A + .00002
NEXT X

FOR X = 1 TO LEN(C$)
X$ = MID$(C$, X, 1)
PRINT ; X$;
A = TIMER
DO
LOOP WHILE TIMER < A + .00002
NEXT X

FOR X = 1 TO LEN(D$)
X$ = MID$(D$, X, 1)
PRINT ; X$;
A = TIMER
DO
LOOP WHILE TIMER < A + .00002
NEXT X
PRINT CHR$(13)
PRINT "Pulsa una tecla para continuar..."
DO
LOOP WHILE INKEY$ = ""

YUMP:
CLS
LINE (40, 0)-(639, 479), 15, B
LINE (42, 2)-(637, 477), 15, B
LINE (44, 4)-(635, 475), 15, B
A$ = "DO"
Y% = 20
X% = 20
KEY(11) ON  'arr
KEY(12) ON 'izq
KEY(13) ON 'der
KEY(14) ON 'abajo
KEY(4) ON
ON KEY(11) GOSUB AR
ON KEY(12) GOSUB IZ
ON KEY(13) GOSUB DE
ON KEY(14) GOSUB AB
ON KEY(4) GOSUB 45

DO
GOSUB fell
A = TIMER

DO

LOCATE Y%, X%
PRINT A$
'''' here
FOR XR% = 2 TO 20
LOCATE 5, 5
LOCATE XR%, 1
PRINT "  "

IF X% = 70 AND Y% = 6 THEN GOTO MURI
IF X% = 70 AND Y% = 7 THEN GOTO MURI

IF X% >= 72 AND Y% = 4 OR X% >= 72 AND Y% = 5 OR X% >= 72 AND Y% = 3 THEN
PLAY "L15"
LOCATE Y%, X%
PRINT "  "
X% = 20
Y% = 10
PNT = PNT + 10
LOCATE 6, 3
PRINT PNT
IF A$ = "DO" THEN
IF S = 0 THEN
PLAY "O2 C"
END IF
A$ = "RE"
GOTO YAQ
END IF
IF A$ = "RE" THEN
IF S = 0 THEN PLAY "O2 D"
A$ = "MI"
GOTO YAQ
END IF

IF A$ = "MI" THEN
IF S = 0 THEN PLAY "O2 E"
A$ = "FA"
GOTO YAQ
END IF

IF A$ = "FA" THEN
IF S = 0 THEN PLAY "O2 F"
A$ = "SL"
GOTO YAQ
END IF

IF A$ = "SL" THEN
IF S = 0 THEN PLAY "O2 G"
A$ = "LA"
GOTO YAQ
END IF
IF A$ = "LA" THEN
IF S = 0 THEN PLAY "O2 A"
A$ = "SI"
GOTO YAQ
END IF
IF A$ = "SI" THEN
IF S = 0 THEN PLAY "O2 B"
GOSUB FIN2
END IF
YAQ:
END IF


FOR JH = 71 TO 78
LOCATE 8, 3
PRINT LIVE
IF X% = JH AND Y% = 7 THEN GOTO MURI
NEXT
GOTO JFORDI
MURI: '''''''''''''''''''''''

GOSUB FINI

JFORDI:
NEXT XR%



LOOP WHILE TIMER < A + .25



LOOP

AR:
IF Y% < 2 THEN
GOSUB FINI
END IF

LOCATE Y%, X%
PRINT "  "
Y% = Y% - 1
RETURN

IZ:
IF X% < 6 THEN
GOSUB FINI
END IF
LOCATE Y%, X%
PRINT "  "
X% = X% - 1
RETURN


DE:
IF X% > 77 THEN GOSUB FINI
LOCATE Y%, X%
PRINT "  "
X% = X% + 1
RETURN

AB:
IF Y% > 29 THEN GOTO FINI
LOCATE Y%, X%
PRINT "  "
Y% = Y% + 1
RETURN

fell:

LOCATE Y%, X%
PRINT "  "
Y% = Y% + 1

FOR XR% = 2 TO 27
LOCATE Y%, X%
PRINT A$

LOCATE XR%, 1
PRINT "  "
NEXT XR%

LINE (40, 0)-(639, 479), 15, B
LINE (42, 2)-(637, 477), 15, B
LINE (44, 4)-(635, 475), 15, B
LINE (635, 100)-(555, 100), 3
LINE (555, 100)-(555, 80), 3


IF Y% > 27 OR X% > 78 THEN
GOSUB FINI
END IF
IF Y% < 2 OR X% < 2 THEN
GOSUB FINI
END IF
RETURN

FINI:
FOR X = 11 TO 14 STEP 1
KEY(X) OFF
NEXT
IF S = 0 THEN BEEP
LIVE = LIVE - 1
IF LIVE = 0 THEN GOTO CGAC
Y% = 20
X% = 10
FOR X = 11 TO 14 STEP 1
KEY(X) ON
NEXT
RETURN

FIN2:
CLS
SCREEN 0

PRINT "ญHAS REPARADO EL ALTAVOZ INTERNO DEL ORDENADOR!"
IF S = 0 THEN
PLAY "C D E F G A B BAGFEDC"
PLAY "L64CDEFGAB BAGFEDC"
END IF
GOTO 45

CGAC:
CLS
SCREEN 0
PRINT "Tกo, l'has diคao. Eres m s malo que el betฃn."

45 FINA:
GOTO inicio


CALCU:
YX% = 1
XS% = 1
KEY(4) OFF
SCREEN 0
DIM F1 AS LONG
DIM F2 AS LONG
DIM RESULT AS LONG
DIM T(91) AS STRING
DIM E(91) AS STRING
DIM ANS AS DOUBLE
INPUT "จDESEA INSTRUCCIONES? (S/N)", HG$
HG$ = UCASE$(HG$)
IF HG$ = "N" THEN GOTO SSRAT
IF HG$ = "S" THEN GOTO KAT

KAT:
CLS
LOCATE 1, 1
PRINT "ENTER->= ESC->Salir; Si tienes un nฃmero negativo y uno positivo, pon siempre delante elpositivo.";
PRINT ; "Si tienes dos nฃmeros negativos, sฃmalos normalmente y lo ฃnico que tienes que  diferenciar es que ser  la misma soluciขn con signo contrario";
PRINT "PULSA UNA TECLA..."
DO
LOOP WHILE INKEY$ = ""
CLS
SSRAT:
CLS
SRAT2:
X = 0
FOR X = 1 TO 10
T(X) = ""
E(X) = ""
F$ = ""
FG$ = ""
ANS = 0
NEXT
'CLEAR



COLOR 7, 0
LOCATE 5, 10
PRINT "7  "; "8  "; "9    *"
LOCATE 7, 10
PRINT "4  "; "5  "; "6    /"
LOCATE 9, 10
PRINT "1  "; "2  "; "3    +"
LOCATE 11, 10
PRINT "=  0  .    -"

''''''''''''''COLOR 0, 10
LOCATE 13, 10
PRINT "            "
LOCATE , 10
X = 0
DO UNTIL T(X) = "*" OR T(X) = "+" OR T(X) = "-" OR T(X) = "/" OR X = 90
X = X + 1
JUJ:
T(X) = INPUT$(1)
IF T(X) = "*" OR T(X) = "/" OR T(X) = "+" OR T(X) = "-" OR T(X) = "0" OR T(X) = "." THEN
GOTO HYH
END IF

IF T(X) = "1" OR T(X) = "2" OR T(X) = "3" OR T(X) = "4" OR T(X) = "5" OR T(X) = "6" THEN
GOTO HYH
END IF

IF T(X) = "7" OR T(X) = "8" OR T(X) = "9" OR T(X) = "0" THEN GOTO HYH
IF T(X) = CHR$(27) THEN GOTO GFI
GOTO JUJ
HYH:
F$ = F$ + T(X)
IF S = 0 THEN SOUND 37, .1
LOCATE 13
PRINT ; T(X);
LOOP

IF T(X) = "*" THEN
OP$ = "M"
T(X) = RIGHT$(T(X), LEN(T(X)) - 1)
GOTO SMOOTH
END IF

IF T(X) = "/" THEN
OP$ = "D"
T(X) = RIGHT$(T(X), LEN(T(X)) - 1)
GOTO SMOOTH
END IF

IF T(X) = "+" THEN
OP$ = "S"
T(X) = RIGHT$(T(X), LEN(T(X)) - 1)
GOTO SMOOTH
END IF

IF T(X) = "-" THEN
OP$ = "R"
T(X) = RIGHT$(T(X), LEN(T(X)) - 1)
GOTO SMOOTH
ELSE
OP$ = "*"
END IF
X = 0
SMOOTH:
DO UNTIL E(X) = CHR$(13) OR X = 90
X = X + 1
JU1:
E(X) = INPUT$(1)
IF E(X) = CHR$(27) THEN GOTO GFI
IF E(X) = "0" OR E(X) = "." OR E(X) = "1" OR E(X) = "2" OR E(X) = "3" OR E(X) = "4" OR E(X) = "5" OR E(X) = "6" OR E(X) = "7" OR E(X) = "8" OR E(X) = "9" OR E(X) = "0" OR E(X) = CHR$(13) THEN
GOTO HYH1
ELSE
GOTO JU1
END IF
HYH1:
FG$ = FG$ + E(X)
IF S = 0 THEN SOUND 37, .1
LOCATE 13
PRINT ; E(X);
LOOP

IF E(X) = CHR$(13) THEN

FG = VAL(FG$)
F = VAL(F$)

IF OP$ = "M" THEN
LOCATE 13, 10
PRINT "                                                               "
LOCATE 13, 10
ANS = F * FG
PRINT F * FG
END IF

IF OP$ = "D" THEN
LOCATE 13, 10
PRINT "                                                               "
LOCATE 13, 10
IF FG = 0 THEN GOTO JAR
IF FG = 0 AND F = 0 THEN GOTO JAR2:
ANS = F / FG

IF ANS < 1 AND ANS > 0 THEN
SOL$ = STR$(ANS)
SOL$ = "0" + SOL$
PRINT SOL$
GOTO JUR
END IF

PRINT F / FG
GOTO JUR
JAR2:
PRINT "Indeterminado"
GOTO JUR
JAR:
PRINT "infinito"


JUR:
END IF
IF OP$ <> "" THEN


IF OP$ = "S" THEN
LOCATE 13, 10
PRINT "                                                                    "
LOCATE 13, 10
ANS = F + FG
PRINT F + FG
END IF

IF OP$ = "R" THEN
LOCATE 13, 10
PRINT "                                                                    "
LOCATE 13, 10
ANS = F - FG
PRINT F - FG
END IF
END IF ''''''''''''
COLOR , 0
LOCATE 13, 10
PRINT "                                                                           "
LOCATE 18, 3
PRINT "Presione una tecla para continuar..."

DO
LOOP WHILE INKEY$ = ""
LOCATE 18, 3
PRINT "                                                                  "
GOTO SRAT2
END IF

GFI:
GOTO inicio

SUB EXAM
SCREEN 12
'chr$  ษ ผป ศ อ บ
CLS
PAINT (0, 0), 4
COLOR 2
PRINT "ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป"
PRINT "บ                            Calibrado (Teclea EX para Salir)                  บ"
PRINT "ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ"
PRINT " Nivel: "; LEV
LINE (200, 100)-(520, 400), 0, BF
LINE (150, 130)-(490, 430), 1, BF

ran:
LOCATE 17, 25
PRINT "Correcto: "; : PRINT TRUE
LOCATE 18, 25
PRINT "Errores: "; : PRINT FALSE

LOCATE 10, 25
PRINT "                   "

IF LEV = 1 OR LEV = 2 OR LEV = 3 OR LEV = 4 THEN
LOCATE 13, 25
PRINT "Teclee el resultado."

IF LEV = 1 THEN
RANDOMIZE TIMER
X1% = RND * 10
X2% = RND * 10
END IF

IF LEV = 2 THEN
RANDOMIZE TIMER
X1% = RND * 100
X2% = RND * 10
END IF

IF LEV = 3 THEN
RANDOMIZE TIMER
X1% = RND * 100
X2% = RND * 100
END IF

IF LEV = 4 THEN
RANDOMIZE TIMER
X1% = RND * 1000
X2% = RND * 100
END IF

RANDOMIZE TIMER
Y% = RND * 4
IF Y% = 0 THEN Y% = 1
RAN2:
LOCATE 10, 25

IF Y% = 1 THEN
LOCATE 10, 25
PRINT X1%; : PRINT ; " x "; : PRINT ; X2%; : PRINT ; "="; : INPUT " ", A$
B = X1% * X2%
END IF

IF Y% = 2 THEN
RANDOMIZE TIMER
H% = RND * 10
IF X2% = 0 THEN X2% = RND * 9 + 1
X1% = X2% * H%
LOCATE 10, 25
PRINT X1%; : PRINT ; " : "; : PRINT ; X2%; : PRINT ; "="; : INPUT " ", A$
B = X1% / X2%
END IF

IF Y% = 3 THEN
LOCATE 10, 25
PRINT X1%; : PRINT ; " + "; : PRINT ; X2%; : PRINT ; "="; : INPUT " ", A$
B = X1% + X2%
END IF

IF Y% = 4 THEN
LOCATE 10, 25
PRINT X1%; : PRINT ; " - "; : PRINT ; X2%; : PRINT ; "="; : INPUT " ", A$
B = X1% - X2%
END IF

END IF



IF UCASE$(A$) = "EX" THEN GOTO FI
IF A$ = "" THEN
LOCATE 28, 2
PRINT "ญEscribe el resultado!                              "
        IF S = 0 THEN
        BEEP
        END IF
GOTO RAN2
END IF

''''''Insultos al programa''''''''''''''''''
IF UCASE$(A$) = "GILIPOLLAS" OR UCASE$(A$) = "IDIOTA" OR UCASE$(A$) = "TONTO" OR UCASE$(A$) = "IMBCIL" OR UCASE$(A$) = "IMBECIL" OR UCASE$(A$) = "CABRON" OR LCASE$(A$) = "cabrขn" OR UCASE$(A$) = "HIJO DE PUTA" OR UCASE$(A$) = "JOPUTA" THEN
 LOCATE 28, 2
DO
        IF S = 0 THEN
        BEEP
        END IF
AA = AA + 1
LOOP WHILE AA < 5
DO
PRINT " ญญญญญญญญญญญญญ"; : PRINT A$; : PRINT " lo ser s tฃ!!!!!!!!!!!!!!!!!!!! "
LOOP WHILE INKEY$ = ""
STOP
END IF

IF UCASE$(A$) = "CAPULLO" OR UCASE$(A$) = "MAMON" OR LCASE$(A$) = "mamขn" THEN
LOCATE 28, 2
PRINT "Por ser insultos menores, te dejo"
 B = A
END IF
'''''''''Fin de insultos al programa''''''''''''''

A = VAL(A$)
IF A = 0 AND B <> 0 THEN
LOCATE 28, 2
PRINT "NO JUEGUES COMMIGO, NO ESCRIBAS: "; A$
END IF

IF A <> B THEN
        IF S = 0 THEN
        PLAY "L30 O1 A B C O6 A B C"
        END IF
LOCATE 28, 2
PRINT "Lo siento, pero el resultado no era correcto"
FALSE = FALSE + 1
IF FALSE = 10 THEN GOTO FI
GOTO ran
END IF

IF A = B THEN
        IF S = 0 THEN
        PLAY "l34 L15 O1"
        FOR T = 1 TO 7
        i% = RND * 6 + 1
        IF i% = 1 THEN PLAY "C"
        IF i% = 2 THEN PLAY "D"
        IF i% = 3 THEN PLAY "E"
        IF i% = 4 THEN PLAY "F"
        IF i% = 5 THEN PLAY "G"
        IF i% = 6 THEN PLAY "A"
        IF i% = 7 THEN PLAY "B"
        NEXT
        'PLAY "l34 L15O1ABCEG"
        END IF
LOCATE 28, 2
PRINT "ญCorrecto! ญrespuesta acertada por tu parte!"
TRUE = TRUE + 1
IF TRUE > 19 THEN
PLAY "O6aO2AABBCCEEGG"
LOCATE 28, 2
IF LEV = 1 THEN
OK = 1
PRINT "Puedes utilizar el primer juego"
END IF
IF LEV = 2 THEN
OK = 2
PRINT "Puedes utilizar el segundo juego"
END IF
IF LEV = 3 THEN
OK = 3
PRINT "Puedes utilizar el tercer juego"
END IF
IF LEV = 4 THEN
OK = 4
PRINT "Puedes utilizar el cuarto juego"
END IF
LOCATE 28, 2
DO
LOOP WHILE INKEY$ = ""
PRINT "Teclea ex y ENTER para volver al menu                        "
END IF

GOTO ran
END IF
GOTO ran
FI:
 END SUB

SUB LEVEL
INI:
SCREEN 12
CLS
PAINT (0, 0), 10
COLOR 2
PRINT "ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป"
PRINT "บ                       Escoja el nivel de examen                              บ"
PRINT "ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ"
LINE (200, 100)-(480, 400), 0, BF
LINE (150, 130)-(450, 430), 1, BF
LOCATE 13, 25
PRINT "1- Beb     (10*10)         "
LOCATE 15, 25
PRINT "2- E.S.O.   (100*10)        "
LOCATE 17, 25
PRINT "3- Mejorcito(100*100)       "
LOCATE 19, 25
PRINT "4- Bachiller (1000*100)     "
LOCATE 21, 25
PRINT "5- Menฃ principal           "
A$ = INPUT$(1)
A = VAL(A$)
IF S = 0 THEN
  SOUND 100, .1
END IF

IF A = 6 THEN
PROGRAMER = 1
GOTO CHEATER
END IF
IF A = 1 THEN GOSUB NIVEL1
IF A = 2 THEN GOSUB NIVEL2
IF A = 3 THEN GOSUB NIVEL3
IF A = 4 THEN GOSUB NIVEL4
IF A = 5 THEN GOTO JA

GOTO INI

CHEATER:

NIVEL1:
LEV = 1
GOTO FIN
NIVEL2:
LEV = 2
GOTO FIN
NIVEL3:
LEV = 3
GOTO FIN
NIVEL4:
LEV = 4
GOTO FIN
FIN:
OPTIONS
JA:
END SUB

SUB OPTIONS
PAINT (0, 0), 9
COLOR 2
LOCATE 1, 1
PRINT "ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป"
PRINT "บ                       Opciones de usuario                                    บ"
PRINT "ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ"

LINE (200, 100)-(480, 400), 0, BF
LINE (150, 130)-(450, 430), 1, BF
LOCATE 15, 25
PRINT "1- Opciones de Dificultad    "
YINICIO:
LOCATE 17, 25
        IF S = 0 THEN
        SOUND$ = "2- Desactivar sonido         "
        END IF
       
        IF S = 1 THEN
        SOUND$ = "2- Activar sonido         "
        END IF
PRINT SOUND$
LOCATE 19, 25
PRINT "3- Volver al programa        "
A$ = INPUT$(1)
A = VAL(A$)

IF S = 0 THEN
SOUND 50, .1
END IF

IF A = 1 THEN LEVEL

IF A = 2 THEN
        IF S = 0 THEN
        S = 1
        GOTO K
        END IF
        IF S = 1 THEN S = 0
K:
GOTO YINICIO
        END IF
END SUB

SUB TABLAS
PAINT (0, 0), 2
COLOR 4
LOCATE 1, 1
PRINT "ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป"
PRINT "บ                                Tablas                                        บ"
PRINT "ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ"
LINE (100, 100)-(580, 400), 0, BF
LINE (50, 130)-(550, 430), 1, BF

COLOR 4
LOCATE 12, 10
PRINT "(M)ultiplicar, (D)ividir, (S)umar, (R)estar, (X)alir"
A$ = INPUT$(1)
A$ = UCASE$(A$)
IF A$ = "X" THEN GOTO FA
LOCATE 12, 10
PRINT "                                           "
LOCATE 12, 10
PRINT "                                                    "
LOCATE 12, 10
INPUT "จQu tabla? ", i
LOCATE 12, 10
PRINT "                                           "
LOCATE 12, 10
INPUT "จHasta qu nฃmero? ", F

FOR IH = 0 TO F
LOCATE 17, 10
PRINT "                                            "
LOCATE 17, 10
A$ = UCASE$(A$)
IF A$ = "M" THEN
PRINT i; : PRINT ; " x "; : PRINT ; IH; : PRINT ; " = "; : PRINT ; i * IH
END IF
IF A$ = "D" THEN
IF IH = 0 THEN IH = 1
PRINT i; : PRINT ; " : "; : PRINT ; IH; : PRINT ; " = "; : PRINT ; i / IH
END IF
IF A$ = "S" THEN
PRINT i; : PRINT ; " + "; : PRINT ; IH; : PRINT ; " = "; : PRINT ; i + IH
END IF

IF A$ = "R" THEN
PRINT i; : PRINT ; " - "; : PRINT ; IH; : PRINT ; " = "; : PRINT ; i - IH
END IF
A = TIMER
DO
LOOP WHILE TIMER < A + .7
NEXT IH
LOCATE 19, 10
COLOR 15
PRINT "Please Wait two seconds";
A = TIMER
DO
LOOP WHILE TIMER < A + 2

''IF UCASE$(A$)="M" THEN
FA:
END SUB

SUB USER
CLS
SCREEN 0
'CHR$ ษ ผป ศ อ บ

LOCATE 1, 4
COLOR 15, 1
PRINT "ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป"
LOCATE 2
PRINT "ษออสออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป บ"
PRINT "บ                   JSM Software Special Team 6.30                  บ บ"
PRINT "บ                                                                   บ บ"
PRINT "บ        Este programa es FREEWARE, puede ser distribuido           บ บ"
PRINT "บ     libremente, siempre que no sea modificado ni manipulado.      บ บ"
PRINT "บ                                                                   บ บ"
PRINT "บ                                                                   บ บ"
PRINT "บ     JSM Software siempre crea programas altamente compatibles,    บ บ"
PRINT "บ     lo ฃnico necesario es teclado y un monitor VGA.               บ บ"
PRINT "บ    Funciona perfectamente con la nueva tecnologกa Pentium3(TM)    บ บ"
PRINT "บ                                                                   บ บ"
PRINT "บ                                                                   ฬอผ"
PRINT "บ                                                                   บ "
PRINT "ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ "

COLOR 15, 0
LOCATE 16, 1
PRINT "Adiขs, Agur, Adu, Adie, Ciao!!!"
END
END SUB

