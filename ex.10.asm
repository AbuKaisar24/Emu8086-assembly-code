.MODEL SMALL
.DATA 
C1 DB 'ENTE A HEX DIGIT: $' 
C2 DB 'IN DECIMAL IT IS: 1'
C3 DB ?,'$' 

.CODE

MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    LEA DX, C1
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
    SUB AL, 11H
    MOV C3, AL
    
    MOV AH, 2
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H  
    
    MOV AH, 9
    LEA DX, C2
    INT 21H
    
 EXIT: 
  MOV AH, 4CH
  INT 21H
   
    
   
    
    
