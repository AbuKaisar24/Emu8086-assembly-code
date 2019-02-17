.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB 'Enter the lower case:$'
MSG2 DB 'Upper case it is:$'
.CODE

MAIN PROC 
    
    MOV AX, @DATA ;put data in ax register
    MOV DS, AX    ;than move the ax value in data segment 
    
  
    LEA DX, MSG1  ; move the message in dx register
    MOV AH, 9     ; string out-put 
    INT 21H
    
    MOV AH, 1     ; single key in put.
    INT 21H
    MOV BL, AL    ;move the value of al value in bl register
    
  
    
    MOV AH, 2      ; single key output
    MOV DL, 13     
    INT 21H
    MOV DL,10
    INT 21H
    

    LEA DX, MSG2
    MOV AH, 9
    INT 21H 
    
     MOV AH, 2
     MOV DL, BL
     SUB DL, 20H
     INT 21H
    
    MAIN ENDP
END MAIN 
    
     






