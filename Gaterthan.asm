org 100h
.data 
m1 db 'enter number:$'
m2 db 'Gratter than$'
m3 db 'Smaller than$'
.code 

mov ax, @data
mov ds,ax
lea dx, m1
mov ah, 9
int 21h

mov ah, 1
int 21h

sub al,48

cmp al, 9 
jge l1

lea dx, m3
mov ah, 9
int 21h
jmp exit

l1: lea dx, m2
    mov ah, 9
    int 21h
    jmp exit 
    
exit:
  mov ah, 4ch
  int 21h



   