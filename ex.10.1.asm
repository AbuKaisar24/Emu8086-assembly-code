;write a program to read one of the hex digit A-F, ang display in on the next line in decimal.  
                                 
;sample: 
;       ENTER THE A HEX DIGIT : C  
;       IN DECIMAL IT IS  12



.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB  'ENTER A HEX DIGIT :$ '
MSG2 DB  'IN DECIMAL IT IS 1'
C1   DB  ?,'$'
.CODE

MAIN PROC 
    
    MOV AX, @DATA
    MOV DS, AX
    LEA DX, MSG1
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
 
    SUB AL, 11H
    MOV C1, AL
    
    MOV AH, 2
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H
    
    LEA DX, MSG2 
    MOV AH, 9
    INT 21H 
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    
    
    




