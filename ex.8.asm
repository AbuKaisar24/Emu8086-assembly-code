.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB 'THE SUM OF '
C1 DB ?,' AND '
C2 DB ?,' IS '
C3 DB ?,' $'

.CODE 
    MAIN PROC
         
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH,2
    MOV DL,'?'
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV C1, AL
    
    INT 21H
    MOV C2, AL
    
    MOV BL, C1
    ADD BL, C2
    SUB BL, 30H
    MOV C3, BL
    
    MOV AH, 2
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H
    
  
    LEA DX, MSG1
    MOV AH, 9
    INT 21H
    
    EXIT:
    MOV AH, 4CH
    INT 21H
  MAIN ENDP
    END MAIN 
 



