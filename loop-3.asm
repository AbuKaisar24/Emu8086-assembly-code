org 100h
mov ah,1
l1:int 21h
   cmp al,' '
   je exit
   jmp l1 
   
   exit: mov ah, 4ch
         int 21h