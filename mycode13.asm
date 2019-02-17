
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
.MODEL SMALL
.STACK 100H
.DATA 
MSG DB 'HELLO'

.CODE 
 MAIN PROC 
    
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX, MSG
    MOV AH, 9
    INT 21h
    
    MOV AH, 4CH
    INT 21h
    
 END MAIN

ret




