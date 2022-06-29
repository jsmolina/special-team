DECLARE SUB RAD ()
DECLARE SUB Reloj ()
DECLARE SUB SALIR2 ()
DECLARE SUB Face (Min$)
SCREEN 12
CLS
PALETTE 0, 16
COLOR 14
c = 16
U = 37
M = 1
DO
LOCATE 1, 1
PRINT M; "Esc para Empezar"
LOCATE 15, 28: PRINT "JSM Entertaintment Software"
c = c - 1
IF c < 1 THEN c = 15
CIRCLE (320, 240), 100, c, 1, 2
c = c - 1
IF c < 1 THEN c = 15
CIRCLE (320, 240), 100, c, 2, 3
c = c - 1
IF c < 1 THEN c = 15
CIRCLE (320, 240), 100, c, 3, 4
c = c - 1
IF c < 1 THEN c = 15
CIRCLE (320, 240), 100, c, 4, 5
c = c - 1
IF c < 1 THEN c = 15
CIRCLE (320, 240), 100, c, 5, 6
c = c - 1
IF c < 1 THEN c = 15
CIRCLE (320, 240), 100, c, 6, 1

c = c - 1
IF c < 1 THEN c = 15
CIRCLE (320, 240), 50, c, 1, 2
c = c - 1
IF c < 1 THEN c = 15
CIRCLE (320, 240), 50, c, 2, 3
c = c - 1
IF c < 1 THEN c = 15
CIRCLE (320, 240), 50, c, 3, 4
c = c - 1
IF c < 1 THEN c = 15
CIRCLE (320, 240), 50, c, 4, 5
c = c - 1
IF c < 1 THEN c = 15
CIRCLE (320, 240), 50, c, 5, 6
c = c - 1
IF c < 1 THEN c = 15
CIRCLE (320, 240), 50, c, 6, 1
'DO
'LOOP WHILE INKEY$ = ""
U = U + 1
IF U > 160 THEN
U = 37
M = M + 1
END IF
IF M > 5 THEN
U = 200
M = 5
END IF
SOUND U, 1
LOOP WHILE INKEY$ <> CHR$(27)

'CHAIN "Palette.bas"
SCREEN 0
COLOR 10, 0
ON ERROR GOTO 40
KEY ON
1 KEY 4, "Inici"
CLS
DO
PALETTE 0, 16
LOCATE 1, 1
PRINT "Podr†s escoger diferentes opciones en este programa m£ltiple."
LOCATE 2, 1
PRINT "Si escoges las Preguntas, y lo haces bien, puedes jugar"
LOCATE 3, 1
PRINT "F4 para Men£ Principal"
LOCATE 4, 1
PRINT "(Si te encuentras en una pregunta, pulsa F4 i despues ENTER)"
LOCATE 5, 1
PRINT "Una tecla para Continuar"
IF INKEY$ <> "" THEN EXIT DO
LOOP

IIIIIINICIO:
KEY(4) ON
ON KEY(4) GOSUB G
CLS
DO
D = RND * 10 + 1
COLOR D
LOCATE 2, 1
PRINT "Special Team"
LOCATE 3, 1
PRINT "By JSM ENTERTAINTMENT Software"
IF INKEY$ <> "" THEN EXIT DO
LOOP
G:
CLS
COLOR 10
DO
LOCATE 1, 1
PRINT "Usa seis decimals"
COLOR 10
COLOR , 0
CLS
COLOR 10
COLOR , 0
CLOSE : PRINT "®QuÇ quieres?(P=Preguntas/T=Tablas/O=Operaciones/D=Dibujar/R=Reloj/S=Salir) ", L$
L$ = INPUT$(1)
LOCATE 2, 1: PRINT L$
SOUND 37, 1
IF UCASE$(L$) = "T" THEN EXIT DO
IF UCASE$(L$) = "P" THEN GOSUB Preguntas
IF UCASE$(L$) = "O" THEN GOSUB Multi
IF UCASE$(L$) = "D" THEN COLOR 0: GOSUB DIBU
IF UCASE$(L$) = "R" THEN Reloj
IF UCASE$(L$) = "S" THEN GOSUB SALIR
IF L$ = CHR$(27) THEN GOSUB SALIR
CLOSE
PLAY "O6L40ABCDEFG"
LOOP
COLOR 15
10 X = 1
CLS
KEY OFF
KEY(4) ON
ON KEY(4) GOSUB G
COLOR 12
20 INPUT "QuÇ tabla? ", N
SOUND 37, .1
30 INPUT "Hasta quÇ n£mero operamos? ", NX
SOUND 40, .1
CLS
DO
INPUT "Multiplicaciones(M), Sumes(S), Restas(R), o Divisiones(D)? ", ESC$
IF UCASE$(ESC$) = "M" THEN GOTO M
IF UCASE$(ESC$) = "S" THEN GOTO S
IF UCASE$(ESC$) = "R" THEN GOTO R
IF UCASE$(ESC$) = "D" THEN GOTO D
SOUND 70, .1
CLS
LOOP

M:
CLS
FOR X = 0 TO NX
LOCATE 15, 30
PRINT N; "X"; X; "="; N * X
GOSUB HORA
SOUND 8000, 1000 / 1000
NEXT X
CLS
GOSUB G
END

S:
CLS
FOR X = 0 TO NX
LOCATE 15, 30
PRINT N; "+"; X; "="; N + X
GOSUB HORA
SOUND 8000, 1000 / 1000
NEXT X
CLS
GOSUB G
END
R:
CLS
FOR X = 0 TO NX
LOCATE 15, 30
PRINT N; "-"; X; "="; N - X
GOSUB HORA
SOUND 8000, 1000 / 1000
CLS
NEXT X
CLS
GOSUB G
END

D:
CLS
FOR X = 1 TO NX
LOCATE 15, 30
PRINT N; ":"; X; "="; N / X
GOSUB HORA
SOUND 8000, 1000 / 1000
CLS
NEXT X
CLS
GOSUB G
END

HORA:
OOP = VAL(RIGHT$(TIME$, 2))
DO
LOCATE 1, 1
PRINT "                      "
IME = VAL(RIGHT$(TIME$, 2))
LOCATE 3, 1: E$ = TIME$
IF IME = OOP + 1 THEN RETURN
LOOP

Preguntas:
KEY OFF
CLS
KEY(4) ON
DO
CLS
LOCATE 1, 1
INPUT "Dificultad (1-3) "; D$
SOUND 50, 1
IF D$ = "1" THEN
jsm = 10
jsm2 = 10
EXIT DO
END IF
IF D$ = "2" THEN
jsm = 20: jsm2 = 20
EXIT DO
END IF
IF D$ = "3" THEN
jsm = 200: jsm2 = 100
EXIT DO
END IF
IF D$ = "JSM" THEN
GOTO NAVE
END IF
IF D$ = "ES" THEN
GOSUB ES
CLS
END IF
LOOP
CLS
E = 0
J = 0
DO
LOCATE 3, 1
INPUT "Multiplicaciones, Restas, Divisiones (M/R/D)? ", YE$
IF UCASE$(YE$) = "M" THEN CLS : GOSUB M2
IF UCASE$(YE$) = "R" THEN CLS : GOSUB R2
IF UCASE$(YE$) = "D" THEN CLS : GOSUB J
CLS
LOOP

J:
IF D$ = "1" THEN GOSUB D3
E = 0
J = 0
X:
DO
N = RND * jsm
NX = RND * jsm2
IF NX = 0 THEN NX = 1
IF N < NX THEN SWAP NX, N
IF J > 9 AND E > 6 AND E < 9 THEN PRINT "Puedes mejorar, por ahora no juegas": BEEP: BEEP: CLS : GOSUB G
IF J > 9 AND E < 6 AND E < 9 THEN PRINT "MUY MAL": BEEP: CLS : GOSUB G
IF E > 9 THEN PRINT "Excelente, Muy Bien!!!!, juega": PLAY "O4L5CDEFGAB": GOTO Correcto
LOCATE 15, 40
PRINT "Errores: "; J
LOCATE 14, 40
PRINT "Aciertos: "; E

LOCATE 1, 1
PRINT N; ":"; NX;
INPUT ; "= ", R
X = N / NX
DO
IF R = X THEN PLAY "L40O5GABC": PRINT "BÇ,MOLT Bê": E = E + 1: CLS : GOTO X
IF R <> X THEN LOCATE 1, 40: PRINT " Mal. Era: "; X: BEEP: BEEP: J = J + 1: CLS : GOTO X
LOOP
LOOP
GOTO J

D3:
DO
N% = RND * jsm
NX% = RND * jsm2
N% = N% * 2
NX% = NX% * 2
IF N% < NX% THEN SWAP NX%, N%
IF NX% = 0 THEN NX% = 1
IF J > 9 AND E > 6 AND E < 9 THEN PRINT "Puedes mejorar, por ahora no juegas": BEEP: BEEP: CLS : GOSUB G
IF J > 9 AND E < 6 AND E < 9 THEN PRINT "MUY MAL": BEEP: CLS : GOSUB G
IF E > 9 THEN PRINT "Excelente, Muy Bien!!!!. juega": PLAY "O4L5CDEFGAB": GOTO Correcto
LOCATE 15, 40
PRINT "Errores: "; J
LOCATE 14, 40
PRINT "Aciertos: "; E

LOCATE 1, 1
PRINT N%; ":"; NX%;
INPUT ; "= ", R%
X% = N% / NX%
DO
IF R% = X% THEN PLAY "L40O4GABC": PRINT "Bien, Muy Bien": E = E + 1: CLS : GOTO D3
IF R% <> X% THEN LOCATE 1, 40: PRINT " Mal. Era: "; X%: BEEP: BEEP: J = J + 1: CLS : GOTO D3
LOOP
LOOP


END


IN:
DO
I2:
M2:
N% = RND * jsm
NX% = RND * jsm2
IF J > 9 AND E > 6 AND E < 9 THEN PRINT "Puedes mejorar, por ahora no juegas": BEEP: BEEP: CLS : GOSUB G
IF J > 9 AND E < 6 AND E < 9 THEN PRINT "MUY MAL": BEEP: CLS : GOSUB G
IF E > 9 THEN PRINT "Excelente, Muy Bien,!!!!, juega": PLAY "O4L5CDEFGAB": GOTO Correcto
LOCATE 15, 40
PRINT "Errores: "; J
LOCATE 14, 40
PRINT "Aciertos: "; E

LOCATE 1, 1
PRINT N%; "X"; NX%;
INPUT ; "= ", R
DO
IF R = N% * NX% THEN PLAY "L40O5GABC": PRINT "Bien,Muy Bien": E = E + 1: CLS : EXIT DO
IF R <> N% * NX% THEN LOCATE 1, 40: PRINT " Mal. Era: "; N% * NX%: BEEP: BEEP: J = J + 1: CLS : GOTO I2
LOOP
LOOP

R2:
IF D$ = "1" THEN GOSUB R3
i:
DO
N = RND * jsm
NX = RND * jsm2
IF J > 9 AND E > 6 AND E < 9 THEN PRINT "Puedes mejorar, por ahora no juegas": BEEP: BEEP: CLS : GOSUB G
IF J > 9 AND E < 6 AND E < 9 THEN PRINT "MUY MAL": BEEP: CLS : GOSUB G
IF E > 9 THEN PRINT "Excelente, Muy Bien,!!!!, juega": PLAY "O4L5CDEFGAB": GOTO Correcto
LOCATE 15, 40
PRINT "Errores: "; J
LOCATE 14, 40
PRINT "Aciertos: "; E

LOCATE 1, 1
PRINT N; "-"; NX;
INPUT ; "= ", R
DO
IF R = N - NX THEN PLAY "L40O5GABC": PRINT "Bien,Muy Bien": E = E + 1: CLS : GOTO R2
IF R <> N - NX THEN LOCATE 1, 40: PRINT " Mal. Era: "; N - NX: : BEEP: BEEP: J = J + 1: CLS : GOTO R2
LOOP
LOOP
GOTO IN

R3:
DO
N% = RND * jsm
NX% = RND * jsm2
IF J > 9 AND E > 6 AND E < 9 THEN PRINT "Puedes mejorar, por ahora no juegas": BEEP: BEEP: CLS : GOSUB G
IF J > 9 AND E < 6 AND E < 9 THEN PRINT "MUY MAL": BEEP: CLS : GOSUB G
IF E > 9 THEN PRINT "Excelente, Muy Bien,!!!!. juega": PLAY "O4L5CDEFGAB": GOTO Correcto
IF J < 9 AND E > 8 THEN PRINT "Bastante bien, te dejo jugar": GOTO Correcto
LOCATE 15, 40
PRINT "Errores: "; J
LOCATE 14, 40
PRINT "Aciertos: "; E

LOCATE 1, 1
PRINT N%; "-"; NX%;
INPUT ; "= ", R
DO
IF R = N% - NX% THEN PLAY "L40O4GABC": PRINT "BÇ,MOLT Bê": E = E + 1: CLS : GOTO R3
IF R <> N% - NX% THEN LOCATE 1, 40: PRINT " Mal. Era: "; N% - NX%: BEEP: BEEP: J = J + 1: CLS : GOTO R3
LOOP
LOOP
END

Multi:
KEY OFF

CLS
KEY(4) ON
ON KEY(4) GOSUB G
DO
PRINT "Sumes, Restas, Multiplicaciones o Divisiones (S/R/M/D) ", H$
H$ = INPUT$(1)
CLOSE
IF UCASE$(H$) = "S" THEN GOSUB SUMAR
IF UCASE$(H$) = "R" THEN GOSUB RESTAR
IF UCASE$(H$) = "M" THEN GOSUB MULTIPLICAR
IF UCASE$(H$) = "D" THEN GOSUB DIVIDIR
CLS
LOOP
MULTIPLICAR:
CLS
LOCATE 1, 1
COLOR 25
PRINT "F4 i ENTER para Men£"
DO
COLOR 7
LOCATE 2, 1
INPUT "N£mero1: ", N
LOCATE 3, 1
INPUT "N£mero2: ", NX
LOCATE 3, 10: PRINT "                                   "
LOCATE 3, 10: PRINT "                                   "
LOCATE 4, 1
PRINT N; "X"; NX; "="; N * NX; "                                            "
LOCATE 2, 9: PRINT "                                                         "
LOOP
GOSUB G
RESTAR:
CLS
LOCATE 1, 1
COLOR 25
PRINT "F4 i ENTER para Men£"
DO
COLOR 7
LOCATE 2, 1
INPUT "N£mero1: ", N
LOCATE 2, 10: PRINT "                                   "
LOCATE 3, 1
INPUT "N£mero2: ", NX
LOCATE 3, 10: PRINT "                                   "
LOCATE 4, 1
PRINT N; "-"; NX; "="; N - NX; "                                            "
LOCATE 2, 9: PRINT "                                                         "
LOOP
GOSUB G

DIVIDIR:
CLS
LOCATE 1, 1
COLOR 25
PRINT "F4 i ENTER para Men£"
DO
COLOR 7
LOCATE 2, 1
INPUT "N£mero1: ", N
ER:
LOCATE 3, 1
COLOR 7
INPUT "N£mero2: ", NX
LOCATE 3, 10: PRINT "                                   "
IF NX = 0 THEN LOCATE 3, 40: COLOR 28: PRINT "No se puede dividir entre cero": GOSUB ER
LOCATE 3, 10: PRINT "                                                              "
LOCATE 4, 1
PRINT N; ":"; NX; "="; N / NX; "                                            "
LOCATE 2, 9: PRINT "                                                         "
LOOP
GOSUB G

SUMAR:
CLS
LOCATE 1, 1
COLOR 25
PRINT "F4 i ENTER para Men£"
DO
LOCATE 2, 1
COLOR 7
INPUT "N£mero1: ", N
LOCATE 2, 9: PRINT "                                   "
LOCATE 3, 1
INPUT "N£mero2: ", NX
LOCATE 3, 9: PRINT "                                   "
LOCATE 4, 1
PRINT N; "+"; NX; "="; N + NX; "                                            "
LOCATE 2, 9: PRINT "                                                         "
LOOP
GOSUB G


ST:
CLS
COLOR 7, 0
END
END

DIBU:
CLS
KEY OFF

ON KEY(11) GOSUB Arriba1
ON KEY(12) GOSUB Izquierda1
ON KEY(13) GOSUB Derecha1
ON KEY(14) GOSUB Abajo1
ON KEY(1) GOSUB Paleta1
ON KEY(2) GOSUB Paleta2
ON KEY(3) GOSUB Paleta3
ON KEY(4) GOSUB Paleta4
ON KEY(5) GOSUB Paleta0

ON KEY(6) GOSUB Color1
ON KEY(7) GOSUB Color2
ON KEY(8) GOSUB Color3
ON KEY(9) GOSUB Color4
ON KEY(10) GOSUB Color5
ON KEY(30) GOSUB Color6
ON KEY(31) GOSUB COLOR7

COLOR 3
COLOR , 0
CLS
LOCATE 1, 1
PRINT "F1-"; : PRINT ; CHR$(177)
PRINT "F2-"; : PRINT ; CHR$(176)
PRINT "F3-"; : PRINT ; CHR$(219)
PRINT "F4-"; : PRINT ; CHR$(178)
PRINT "F5-Liso"
PRINT "P-L°nea"
PRINT "F5->F12- Cambio color"
PRINT "P-L°nea"
PRINT "Esc-Salir"
PRINT "Impr Pant-IMPRIMIR"
PRINT "Keypad (Direcci¢n)"
DO
IF INKEY$ <> "" THEN EXIT DO
KEY(1) OFF
KEY(2) OFF
KEY(3) OFF
KEY(4) OFF
KEY(5) OFF
KEY(6) OFF
KEY(7) OFF
LOOP

KEY(1) ON
KEY(2) ON
KEY(3) ON
KEY(4) ON
KEY(5) ON
KEY(6) ON
KEY(7) ON
KEY(8) ON
KEY(9) ON
KEY(10) ON
KEY(30) ON
KEY(31) ON
KEY(11) ON
KEY(12) ON
KEY(13) ON
KEY(14) ON
CLS
fila = 15
columna = 40
COLOR , 0
COLOR 7
DO
COLOR , 0
KEY(4) ON
LOCATE 2, 1: PRINT " "
IF UCASE$(INKEY$) = CHR$(27) THEN GOSUB G
IF UCASE$(INKEY$) = "P" THEN GOSUB LINEA
IF fila < 2 THEN
fila = 2
COLOR , 0
LOCATE fila - 1, columna: PRINT " "
LOCATE fila, columna
PRINT " "
COLOR , c
PRINT CH$

END IF
IF columna > 73 THEN
columna = 73
LOCATE fila, columna + 1
COLOR , 0
LOCATE fila, columna + 1: PRINT " "
LOCATE fila, columna
PRINT " "
COLOR , c
PRINT CH$

END IF
IF columna < 2 THEN
columna = 2
COLOR , 0
LOCATE fila, columna - 1: PRINT " "
LOCATE fila, columna
PRINT " "
COLOR , c
PRINT CH$
END IF
IF fila > 22 THEN
fila = 22
COLOR , 0
PRINT " "
LOCATE fila + 1, columna: PRINT " "
LOCATE fila, columna
COLOR , c
PRINT CH$
END IF

LOCATE fila, columna
COLOR , c
PRINT CH$
LOOP

Paleta1:
LOCATE fila, columna
CH$ = CHR$(177)
RETURN

Arriba1:
fila = fila - 1
RETURN
Izquierda1:
columna = columna - 1
RETURN
Derecha1:
columna = columna + 1
RETURN
Abajo1:
fila = fila + 1
RETURN

Paleta2:
LOCATE fila, columna
CH$ = CHR$(176)
RETURN

Paleta3:
LOCATE fila, columna
CH$ = CHR$(219)
RETURN

Paleta4:
CH$ = CHR$(178)
RETURN

Paleta0:
CH$ = CHR$(0)
RETURN

Color1:
c = 1
RETURN

Color2:
c = 2
RETURN

Color3:
c = 3
RETURN

Color4:
c = 4
RETURN

Color5:
c = 0
RETURN

Color6:
c = 6
RETURN

COLOR7:
c = 7
RETURN


FIN3:
END
RETURN

limpiar2:
CLS
RETURN

LINEA:
CH$ = "_"
RETURN


NAVE:
KEY OFF
CLS
JKJ = 4500
COLOR RND * 6 + 1
SCREEN 11
CLS
KEY(1) ON
PRINT "Voy a llevar a cabo la detecci¢n de procesador, cinco segundos"
c = VAL(RIGHT$(TIME$, 2))
IF c > 54 THEN c = 0
Y = 0
LOCATE 2, 1
PRINT c
DO
T = VAL(RIGHT$(TIME$, 2))
IF T > 54 THEN
DO
T = 0
IF VAL(RIGHT$(TIME$, 2)) = 0 THEN EXIT DO
LOOP
END IF
Y = Y + 1
LOCATE 4, 1: PRINT Y
LOCATE 3, 1: PRINT T
IF T = c + 5 THEN EXIT DO
LOOP

IF Y >= 4000 AND Y < 15000 THEN
A$ = "2"
PRINT "Posees un 586"
SLEEP 1
END IF
IF Y >= 1000 AND Y < 4000 THEN
A$ = "1"
PRINT "Posees un 486"
SLEEP 1
END IF
IF Y >= 15000 AND Y < 30000 THEN
A$ = "3"
PRINT "Posees un 586 de gama alta (200-...)"
SLEEP 1
END IF
IF A$ = "" THEN
PRINT "Imposible de detectar"
INPUT "Introduce una velocidad (+N£mero=-velocidad) ", JKJ
END IF
CLS


CLS
IF A$ = "1" THEN JKJ = JKJ / 2
IF A$ = "2" THEN JKJ = JKJ
IF A$ = "3" THEN JKJ = JKJ * 4 + 10
LOCATE 1, 66: PRINT "              "
CLS
KEY(1) ON
ON KEY(1) GOSUB Inicio2
ON ERROR GOTO 40
DO
LOCATE 1, 1
SCREEN 0
COLOR R
R = RND * 7 + 1
PRINT "JSM ENTERTAINMENT SOFTWARE"
IF INKEY$ <> "" THEN EXIT DO
PLAY "O1L40N2ACGEF"
LOOP
DO
CLS
SCREEN 7
'DRAW "P3, 0 D70 L50 U70 R50 H9 L50 F9 BL10 BU9 D70 F9 BU9 BL8 R50 F9 BL9 BU9 U69"
IF INKEY$ <> "" THEN EXIT DO
LOOP
SCREEN 0
COLOR , 9
CLS
JJ = RND * 5000
JJ = JJ + 9000
COLOR 4
KEY(4) ON
ON KEY(4) GOSUB G
CLS
COLOR 4, 0
CLS
COLOR 4, 0

DO
LOCATE 1, 1
PRINT "®Quiere Leer Instrucciones?(S/N/F4 Salir) ";
DO
LOCATE 1, 40
S$ = INPUT$(1)
LOCATE 2, 1
PRINT S$
IF UCASE$(S$) = "S" THEN GOSUB INS
IF UCASE$(S$) = "N" THEN GOSUB IJ
LOOP
LOOP
IJ:
SCREEN 8
CLS
B$ = "NAVE,  P O R  J S M  E N T E R T A I N T M E N T  S O F T W A R E"
H = 3
i = 9
COLOR , i
CLS
COLOR H
B$ = B$ + "*** *** "
JU:
B$ = RIGHT$(B$, LEN(B$) - 1) + LEFT$(B$, 1)
LOCATE 15, 4
PRINT B$
LOCATE 1, 1: PRINT "Una tecla para Continuar"
F = VAL(RIGHT$(TIME$, 2))
IF F = 59 THEN F = 0
DO
G$ = INKEY$
IF G$ = "" THEN GOTO 33000
A = VAL(RIGHT$(TIME$, 2))
IF A = F + 1 THEN GOSUB JU
LOOP WHILE INKEY$ = ""
33000 COLOR 7, 0

5016 LOCATE 3, 1
fila = 24
columna = 40
SCREEN 11
c = 4
Inicio:
CLS
Inicio2:

GLOBO:
DIM A(100)
SCREEN 11

50 REM ****RUTINA DIBUJO GLOBO****
LOCATE 5.53, 2
PRINT CHR$(2)
LOCATE 4.53, 2: PRINT CHR$(186)
LOCATE 5.52, 5
LOCATE 25, 40
LOCATE 25, 40
X1 = fila
Y1 = columna
X2 = fila - 4
Y2 = columna - 15
150 GET (75, 80)-(125, 135), A

TECLAS:
REM Subrutina de ConexiΩn
KEY(11) ON
KEY(12) ON
KEY(13) ON
KEY(14) ON
ON KEY(11) GOSUB Arriba
ON KEY(12) GOSUB Izquierda
ON KEY(13) GOSUB Derecha
ON KEY(14) GOSUB Abajo
ON KEY(16) GOSUB SALIR
fila = 15
columna = 40
LOCATE 1, 1
2 SCREEN 11
LOCATE fila, columna
PRINT CHR$(2)
LOCATE 25, 40
PRINT "______/\____________|_________________/ \_____/ \_____________________|_________"
FOR X = 1 TO 14 STEP 4
FOR Y = 1 TO 14 STEP 5
LOCATE X, Y
NEXT
NEXT
LOCATE fila, columna
PRINT CHR$(2)
ON KEY(1) GOSUB PAUSA
DO
LOCATE 5.53, 2
PRINT CHR$(2)
PALETTE 0, 12
REM ***************SUBRUTINA DE IMPRESIÖN**********************
SCREEN 12
c% = RND * 7 + 1
COLOR c%
70 CIRCLE (100, 87), 20
100 LINE (115, 100)-(105, 130)
110 LINE (85, 100)-(95, 130)
120 LINE (95, 130)-(105, 134), 3, BF
130 CIRCLE (100, 125), 2
140 LINE (98, 127)-(102, 133), , BF
LOCATE 25, 40
PRINT "______/\____________|_________________/ \_____/ \_____________________|_________"
LINE (1, 1)-(1, 90), 100
LINE (1, 90)-(50, 90), 100
LINE (1, 1)-(50, 1), 100
GOSUB ene
GOSUB limpiar
IF fila = 5.52 AND columna = 5 THEN PRINT "Te han cogido": BEEP: END
IF fila = 6 AND columna = 5 THEN PRINT " ": fila = 5
IF fila = 89 AND columna = 49 THEN fila = fila - 1 AND columna = columna
fila = fila + 1
LOCATE fila, columna: PRINT CHR$(2)
SCREEN 12
c% = RND * 7 + 1
COLOR c%
IF fila = 1 AND columna = 1 THEN GOSUB FIN
IF fila > 25 THEN GOSUB Choque2
IF fila < 5 AND columna < 10 THEN GOSUB FIN
LOOP
                ' Subrutina de Choque
Choque:
KEY(4) OFF
KEY(1) OFF
KEY(11) OFF
KEY(12) OFF
KEY(13) OFF
KEY(14) OFF

CLS
DO
SCREEN 1
SOUND 37, .1
LOCATE 1, 1
PRINT "Te HAS PERDIDO, ESC PARA Salir"
c = RND * 21
COLOR c
FOR X = 10 TO 100
NEXT
R = RND * 900
D = RND * 900
CIRCLE (R, D), X
CIRCLE STEP(0, 0), X
IF INKEY$ = CHR$(27) THEN SALIR2
LOOP




limpiar:
 LOCATE fila, columna
  PRINT "  "
  RETURN

Arriba:
 GOSUB limpiar
  fila = fila - 1
   IF fila = 1 THEN GOSUB Choque
    IF fila < 5 AND columna < 8 THEN GOSUB FIN
     IF fila = 5.52 AND columna = 5 THEN PRINT "Te han cogido": BEEP: END
      GOSUB Imprimir
       SOUND 100, .1
       RETURN

Izquierda:
 GOSUB limpiar
  columna = columna - 1
   IF fila = 5.52 AND columna = 5 THEN PRINT "Te han cogido": BEEP: END
    IF fila < 5 AND columna < 8 THEN GOSUB FIN
     IF columna < 2 THEN GOSUB Choque
      GOSUB Imprimir
       SOUND 120, .1
       RETURN

Derecha:
 GOSUB limpiar
  columna = columna + 1
   IF fila = 5.52 AND columna = 5 THEN PRINT "Te han cogido": BEEP: END
    IF fila < 5 AND columna < 8 THEN GOSUB FIN
     IF columna > 80 THEN GOSUB Choque
      GOSUB Imprimir
       SOUND 120, .1
       RETURN

Abajo:
 GOSUB limpiar
  fila = fila + 1
   IF fila < 5 AND columna < 8 THEN GOSUB FIN
     IF fila > 25 THEN GOSUB Choque2
      GOSUB Imprimir
       SOUND 100, .1
       RETURN

ene:
 LOCATE fila - 1, columna
  SOUND 60, .1
   PRINT " "
   O = 0
  DO
   IF O = JKJ THEN EXIT DO
   O = O + 1
  LOOP
   RETURN

FIN:
KEY(1) OFF
KEY(11) OFF
KEY(12) OFF
KEY(13) OFF
KEY(14) OFF
SCREEN 1
 KEY(4) OFF
  KEY(4) ON
   ON KEY(4) GOSUB FINISH
    PLAY "MBo3L8ED+ED+Eo2Bo3DCL2o2A"
     LOCATE 25, 1
      PRINT "Noia Salvada"
       PRINT "F4 Salir"
      LOCATE 9, 10: PRINT CHR$(186)
          LOCATE 10, 10: PRINT CHR$(1): LOCATE 10, 11: PRINT CHR$(1)
           DRAW "P1,0BU80BL150U10ND150R20D10R20U10R20D10R20U10R20D10R20U10R20D10ND145R50ND145U5R5D5R5U5R5D5R5U5R5D150L215U4"
            DO
            LOOP
FINISH:
END
Imprimir:
 LOCATE fila, columna
  PRINT CHR$(2)
  RETURN

Choque2:
KEY(11) OFF
KEY(12) OFF
KEY(13) OFF
KEY(14) OFF
BEEP
CLS
c = c - 1
SCREEN 0
COLOR 3
IF c < 0 THEN GOSUB FIN2

LOCATE 1, 1
PRINT "Ca°da, una tecla para continuar";
PRINT ; ". Te quedan:": PRINT c; : PRINT " Vidas"
PLAY "MSO2L25ABGEN2FE"
PLAY "MSO2L25ABGEN2FE"
PLAY "MBL10O2N4GG": PLAY "MBL10O2N4GG"
PLAY "L64GEF": PLAY "L64GEF": PLAY "L64GEF"
PLAY "O2L20MLGafde"
PLAY "O3L32MLMSN84ABCEG"
G = 0
LET G = VAL(RIGHT$(TIME$, 2))
DO
LET H = VAL(RIGHT$(TIME$, 2))
IF H = G + 1 THEN EXIT DO
LOOP
SCREEN 0
GOTO Inicio
CLS
GOSUB Inicio

FIN2:
SCREEN 0
COLOR 2
SCREEN 1
SLEEP 1
COLOR RND * 20
LOCATE 1, 1
DRAW "U20 BD8 R10 L20 C1"
PLAY "L64o3ABGFE"
LOCATE 1, 1
CLS
SCREEN 12
HTONE = 2000: LTONE = 550: DELAY = 500
PRINT "Se te acabaron las vidas . . ."
FOR COUNT = HTONE TO LTONE STEP -10
SOUND COUNT, DELAY / COUNT
NEXT COUNT
PRINT "                        "
SOUND 37, 5
SCREEN 0
CLS : COLOR 7, 0
END

Correcto:
PLAY "O6L64ABCEGDEFEAGDEFAGEDEADDEEF"
PRINT "Has conseguido 10 Aciertos"
SCREEN 1
DRAW "P1,0R20D20NL20D20L20"
SLEEP 1
PLAY "O6A"
CLS
DRAW "P1,0R20D20L20D20R20"
SLEEP 1
PLAY "O6B"
CLS
DRAW "P2,0ND40G10"
PLAY "O6C"
SLEEP 1
PLAY "O6D"
CLS
GOTO NAVE

SELECT CASE ERR
CASE 7
PRINT "Memoria Agotada": END
CASE ELSE
RESUME NEXT
END SELECT

END
SELECT CASE ERR

CASE 1
CLS
COLOR , 0
COLOR 7
40 PRINT " Fin del Programa": BEEP
RUN
END
CASE ELSE
PRINT "Final Repentino": BEEP
CLS
COLOR 7
COLOR , 0
RUN
END SELECT
RETURN

INS:
PRINT "Has de, mediante el Teclado NumÇrico y  Num Lock desconectado,"
PRINT "controlar el piloto fins la base, una entrada en la parte superior de la pantalla."
PRINT "Si la Sobrepasas, mueres. Si chocas contra el  suelo s¢lo pierdes"
PRINT "una vida. Salva a la  chica  situ†ndote sobre ella. F1 es pausa."
DO
IF INKEY$ <> "" THEN EXIT DO
LOOP
GOTO IJ

SALIR:
SCREEN 0
COLOR 7
CLS
KEY OFF
COLOR 11
COLOR , 13
PRINT "|PROGRAMADO POR Jordi Sesmero Molina                                     |"
COLOR , 14
PRINT "|By JSM Entertaintment Software                                          |"
COLOR , 1
PRINT "|BYE!                                                                    |"
PRINT "|ADêU!                                                                   |"
PRINT "|ADI‡S!                                                                  |"
PRINT "|The best creation from JSM ENTERTAINTMENT Software                      |"
COLOR 11
PRINT "|Thank you for playing Special Team                                      |"
COLOR 3
PRINT "|                                                                        |"
COLOR 4
PRINT "|                                                                        |"
COLOR 6
PRINT "|                                                                        |"
COLOR 11
PRINT "|                                                                        |"
PRINT "|                                                                        |"
PRINT "|                                                                        |"
PRINT "|                                                                        |"
PRINT "|***SPECIAL TEAM***                                                      |"
COLOR 7
X = 1
DO
LOCATE 16, X
PRINT CHR$(178)
X = X + 1
IF X > 73 THEN EXIT DO
LOOP
COLOR , 0
LOCATE 17, 1
END

ES:
ON KEY(11) GOSUB 1999
ON KEY(12) GOSUB 2000
ON KEY(13) GOSUB 3000
ON KEY(14) GOSUB 4000
F = 1
KEY(11) ON
KEY(12) ON
KEY(13) ON
KEY(14) ON
SCREEN 8
KEY(11) ON
CLS
LOCATE 25, 40

COLOR 12
PRINT "________________________________________________________________________________";
fila = 22.9
columna = 40

DO
IF INKEY$ = CHR$(27) THEN
SCREEN 0
COLOR 7, 0
KEY(11) OFF
KEY(12) OFF
KEY(13) OFF
KEY(14) OFF
GOTO G
END IF
c = RND * 12 + 1
COLOR c
LOCATE fila, columna: PRINT CHR$(2)
LOOP


1999 GOSUB MUSIC
GOSUB COMPRUEBA
GOSUB LIMPIEZA
fila = fila - 1
LOCATE fila, columna
RETURN

2000 :
GOSUB MUSIC
GOSUB COMPRUEBA
GOSUB LIMPIEZA
columna = columna - 1
RETURN

3000 :
GOSUB MUSIC
GOSUB COMPRUEBA
GOSUB LIMPIEZA
columna = columna + 1
RETURN

4000 :
GOSUB MUSIC
GOSUB COMPRUEBA
GOSUB LIMPIEZA
fila = fila + 1
RETURN

LIMPIEZA:
LOCATE fila, columna
'PRINT " ";
RETURN

MUSIC:
PLAY "O3L64"
F = F + 1
IF F > 7 THEN F = 1
IF F = 1 THEN PLAY "Ao1"
IF F = 2 THEN PLAY "BO2"
IF F = 3 THEN PLAY "CO3"
IF F = 4 THEN PLAY "DO4"
IF F = 5 THEN PLAY "EO5"
IF F = 6 THEN PLAY "FO1"
IF F = 7 THEN PLAY "GO2"
RETURN

COMPRUEBA:
IF fila < 2 THEN
LOCATE fila, columna
PRINT " "
fila = fila + 1
END IF
IF columna < 2 THEN
LOCATE fila, columna
PRINT " "
columna = columna + 1
END IF
IF fila > 22 THEN
LOCATE fila, columna
PRINT " "
fila = fila - 1
END IF
IF columna > 74 THEN
LOCATE fila, columna
PRINT " "
columna = columna - 1
END IF
RETURN

PAUSA:
KEY(1) OFF
KEY(11) OFF
KEY(12) OFF
KEY(13) OFF
KEY(14) OFF
PO = 0
DO
PO = PO + 1
LOCATE 15, 40: PRINT "PAUSA"
COLOR PO
IF PO = 3 THEN PO = 1
LOOP WHILE INKEY$ = ""
LOCATE 15, 40: PRINT "     "
KEY(1) ON
KEY(11) ON
KEY(12) ON
KEY(13) ON
KEY(14) ON
RETURN

' Draw the clock face.
SUB Face (Min$) STATIC
LOCATE 5, 40: PRINT "12"
   LOCATE 21.3, 40: PRINT "6"
   LOCATE 13, 22: PRINT "9"
   LOCATE 13, 60: PRINT "3"
   LOCATE 23, 30
   PRINT "Una tecla para Continuar"
   CIRCLE (320, 100), 175
   ' Convert strings to numbers.
   Hr = VAL(TIME$)
   Min = VAL(Min$)
   Sec = VAL(Sec$)
   ' Convert numbers to angles.
   Little = 360 - (30 * Hr + Min / 2)
   Big = 360 - (6 * Min)
   'Middle = 360 - (60 * Sec)
   ' Draw the hands.
   DRAW "TA=" + VARPTR$(Little) + "NU50"
   DRAW "TA=" + VARPTR$(Big) + "NU70"
   'DRAW "TA=" + VARPTR$(Middle) + "NU60"
END SUB

SUB Reloj
' *** DRAW_EX.BAS ***
'
' Declare procedure.

'
' Select 640 x 200 pixel high-resolution graphics screen.
SCREEN 2
DO
   SLEEP 1
   SOUND 37, .1
   CLS
   ' Get string containing minutes value.
   Min2$ = MID$(TIME$, 4, 2)
   Min$ = RIGHT$(TIME$, 2)
   ' Draw clock face.
   Face Min$
   Face Min2$
   ' Wait until minute changes or a key is pressed.
   DO
      ' Print time at top of screen.
      LOCATE 2, 37
      PRINT TIME$
      ' Test for a key press.
      Test$ = INKEY$
   EXIT DO
   LOOP WHILE Min$ = MID$(TIME$, 4, 2) AND Test$ = ""
' End program when a key is pressed.
LOOP WHILE Test$ = ""
END SUB

SUB SALIR2
SCREEN 8
COLOR 7, 0
CLS
KEY OFF
COLOR , 13
COLOR , 14
LOCATE 5, 15
FOR X = 1 TO 48
COLOR , 4
LOCATE 5
PRINT ; CHR$(205);
NEXT X
LOCATE 5, 15: PRINT CHR$(201)
LOCATE 6, 15: PRINT CHR$(186)
LOCATE 7, 15: PRINT CHR$(186)
LOCATE 7, 16: PRINT "                                                "

LOCATE , 16
FOR X = 1 TO 48
COLOR , 4
LOCATE 8
PRINT ; CHR$(205);
NEXT X
LOCATE 8, 15: PRINT CHR$(200)

LOCATE 6, 16
PRINT "        Intenta jugar mejor la pr¢xima vez     "
LOCATE 5, 63: PRINT CHR$(187)
LOCATE 6, 63: PRINT CHR$(186)
LOCATE 7, 63: PRINT CHR$(186)
LOCATE 8, 63: PRINT CHR$(188)
DO
LOOP WHILE INKEY$ <> CHR$(27)
CLS
SCREEN 0
END
END SUB

