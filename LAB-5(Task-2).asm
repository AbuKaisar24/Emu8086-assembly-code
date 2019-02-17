INCLUDE EMU8086.INC
ORG 100H
.DATA
M1   DB 'ENETR THREE INITIALS:$' 
C1   DB ?
C2   DB ?
C3   DB ?
.CODE 

    MOV AX, @DATA
    MOV DS, AX
    LEA DX, M1
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV C1, AL

    INT 21H
    MOV C2, AL

    INT 21H
    MOV C3, AL
    
    GOTOXY 0,1  
    MOV AH, 2
    MOV  DL, C1 
    INT 21H
    
    GOTOXY 0,2  
    MOV AH, 2
    MOV  DL, C2 
    INT 21H
    
    GOTOXY 0,3  
    MOV AH, 2
    MOV  DL, C3 
    INT 21H 
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    
     
    
 


   
    



