
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX, 3
MOV BX, 10
MOV CX, 5

ADD DX, BX
ADD DX, BX
ADD DX, BX
ADD DX, BX
ADD DX, BX

ADD DX, CX
ADD DX, CX
 
SUB DX, AX



ret




