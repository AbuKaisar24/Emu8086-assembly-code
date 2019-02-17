INCLUDE EMU8086.INC
ORG 100H
.DATA

MSG1 DB 'THE SUM OF '
C1 DB ?,' AND '
C2 DB ?,' IS '
C3 DB ?,' $'

.CODE 
         
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 1
    INT 21H
    MOV C1, AL
    INT 21H
    MOV C2, AL 

    MOV BL, C1
    ADD BL, C2
    SUB BL, 30H
    MOV C3, BL

    CMP C3, 30H
    JGE L1
  
   L1:
    CMP C3 , 39H
    JLE   D1
    JG    D2 
    
   D1:
    
    GOTOXY 0,1
   
    LEA DX, MSG1
    MOV AH, 9
    INT 21H
    JMP EXIT 
    
    D2: 
    GOTOXY 0,1
    PRINT 'WRONG SELECTION'
    JMP EXIT
    
    
    EXIT:
    MOV AH, 4CH
    INT 21H 
 



