1 L = 1 : X$ = "Cannot doYou walk Opened   Closed   A Sword  A Key    Nothing  A chest  A dragon "
2 X$ = X$ + "A corpse Taken    You died You won  "
3 PRINT "You are in a "; MID$("CavePit HallLake", L*4-3,4) : INPUT U$
4 S$ = STR$(100*L+10*C+I) + U$ : L$ = STR$(L) + U$
5 M=2*(U$="NORTH")*(L<3)-2*(U$="SOUTH")*(L>2)+(L$="2WEST")-(L$="3EAST")
6 A=(3 + C + 2*(I=2))*(L$="2LOOK CHEST")+(11+(I=2))*(L$="3KILL DRAGON")+(M<>0)
7 A=A+(5+L)*(U$="LOOK")+(6-I)*(U$="INVENTORY")+(6-(I=0))*(L$="4LOOK CORPSE")
8 A=A+10*(S$="400GET KEY")+2*(S$="201OPEN CHEST")+10*(S$="211GET SWORD")
9 L=L+M : C = C + (A=2) : I = I + (A=10) : PRINT MID$(X$, A*9+1, 9) : IF A <= 10 THEN GOTO 3
