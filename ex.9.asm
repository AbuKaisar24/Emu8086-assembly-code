org 100h
.DATA 
MSG1 DB 'ENTER THE INTIALS:$'
C1   DB ?,10,13
C2   DB ?,10,13
C3   DB ?,'$'
.CODE 

    MOV AX, @DATA
    MOV DS, AX
    LEA DX, MSG1
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV C1, AL

    INT 21H
    MOV C2, AL

    INT 21H
    MOV C3, AL
    
    MOV AH, 2
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H 
     
    MOV AH, 9
    LEA DX, C1 
    INT 21H 
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    
     
    
 


   
    



