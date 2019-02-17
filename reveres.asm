include emu8086.inc  
org 100h
mov cx, 0
l1:
 mov ah, 1
 int 21h
 mov bl, al
 cmp bl, 13
 je l2
 
 push bx 
 inc cx
 jmp l1
l2:
  gotoxy 0, 1
  mov ah, 2
  int 21h
 
print 'the number reverse is:'          
l3:
   pop dx
   int 21h
   loop l3