.MODEL SMALL
.DATA

M1 DB 'ENTER THREE INITIALS:$'
M2 DB ?,10,13
M3 DB ?,10,13
M4 DB ?,'$'

.CODE

MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    LEA DX, M1
    MOV AH, 9
    INT 21H
    
    MOV AH,1 
    INT 21H 
    MOV M2, AL
    
    INT 21H
    MOV M3,AL
    
    INT 21H
    MOV M4, AL
    
    MOV AH, 2
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H
    
    LEA DX, M2
    MOV AH, 9
    INT 21H
           
   MOV AH, 4CH
   INT 21H
   
   MAIN ENDP
 END MAIN
    


