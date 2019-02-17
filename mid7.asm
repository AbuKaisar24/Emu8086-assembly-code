include emu8086.inc
org 100h
mov dx, 0
mov ah, 1
int 21h

while_l:
       cmp al,13
       je end
       inc dx
       int 21h
       loop while_l
end:
   gotoxy 0,1
   mov ah, 2
   int 21h
