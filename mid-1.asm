include emu8086.inc
org 100h
 
mov ah, 1
int 21h

cmp al, 'A'
jge l1
jle d3
 

l1: cmp al, 'Z'
    jle d1
    jmp d2 
d1: 
   gotoxy 0,1
   print 'Uppercase'
   jmp exit 


d2:
   gotoxy 0,1
   print 'Lowercase'
   jmp exit 
   
d3:
   gotoxy 0,1
   print 'not a letter' 
   jmp exit 
   
exit: mov ah, 4ch
      int 21h
