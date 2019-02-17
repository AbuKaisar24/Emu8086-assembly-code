.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC 
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    MOV AH, 2 
    MOV DL, 13
    INT 21H
    MOV DL, 10
    INT 21H
    
    MOV AH, 2
    SUB BL, 31
    MOV DL, BL
    INT 21H 
    
    INC DL
    INT 21H 
       
    INC DL
    INT 21H 
      
    INC DL
    INT 21H
       
    INC DL
    INT 21H 
    
    MOV AH, 2 
    MOV DL, 13
    INT 21H
    MOV DL, 10
    INT 21H
    
    MOV AH, 2   
    ADD BL, 24
    MOV DL, BL
    INT 21H 
    
    DEC DL
    INT 21H 
      
    DEC DL
    INT 21H
    
    DEC DL
    INT 21H
        
    DEC DL
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP
    END MAIN
    
    


