include emu8086.inc
org 100h

mov cx, 0 
mov dx, 0
l1:
  mov ah, 1
  int 21h
  cmp al, 13
  je l2
  push ax
  inc cx
  jmp l1
l2:
  gotoxy 0,1
  mov ah,2
  int 21h
 l3:
   inc bx
   cmp ax, 20h
   je end
   loop l3
 end:
    mov dx, bx 
    add dx, 30h
    mov ah, 2
    int 21h 
 
  
  
  


