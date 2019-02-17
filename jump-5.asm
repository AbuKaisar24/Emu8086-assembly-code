org 100h 
.data
m1 db 'Upper case$'
m2 db 'lower case$'
.code
mov ah, 1
int 21h 


cmp al,"X" 
je upper
cmp al, "x"
je lower

upper: 
mov ah, 2
mov dl, 10
int 21h
mov dl, 13 
int 21h

lea dx, m1
mov ah, 9
int 21h
jmp exit

lower:
mov ah, 2
mov dl, 10
int 21h
mov dl, 13 
int 21h

lea dx, m2
mov ah, 9
int 21h

jmp exit

exit:
mov ah, 4ch
int 21h