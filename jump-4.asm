org 100h

mov al, 3

cmp al, ah
je odd
cmp al, 3 
je odd

mov al, 2
cmp al, ah
je even
cmp al, 4
je even

even :

mov ah,2
mov dl, 'o'
int 21h

jmp exit

odd :

mov ah, 2
mov dl, 'e'
int 21h

jmp exit
exit: 
mov ah, 4ch 
int 21h
