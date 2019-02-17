include emu8086.inc
org 100h
print 'Enter number1:'
mov ah, 1
int 21h
mov bl, al
gotoxy 0,1
print 'Enter number2:'
int 21h
mov dl, al

cmp bl, dl
jg l1
gotoxy 0,2
print 'number2 is big'
jmp exit

l1:
  gotoxy 0, 2
  print 'number1 is big'
  jmp exit 
   exit:
  mov ah, 4ch
  int 21h

