
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AL, 80h
MOV BL, 02h
INC BL
ADD BL, AL 
DEC BL
NEG AX


ret




