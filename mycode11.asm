
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
INCLUDE EMU8086.INC
org 100h

MOV AH, 2
MOV DL, '?'
GOTOXY 5, 5
INT 21h

ret




