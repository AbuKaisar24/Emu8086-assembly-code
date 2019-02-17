.MODEL SMALL
.DATA
D1 DB 'THE SUM OF '
D2 DB ?,' AND '
D3 DB ?,' IS '
D4 DB ?,'$'

.CODE

MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 1
    INT 21H
    MOV D2, AL
  
    INT 21H
    MOV D3, AL
    
    MOV BL, D2
    ADD BL, D3
    SUB BL, 30H
    MOV D4, BL
    
    MOV AH, 2
    MOV DL, 13
    INT 21H
    MOV DL, 10
    INT 21H
    
    LEA DX, D1
    MOV AH, 9
    INT 21H 
    
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP
    END MAIN

