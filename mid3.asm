include emu8086.inc

org 100h 
.data
m1 db 'Difference=$'
.code 
mov ax, @data
mov ds, ax

mov ah,2
mov dl, '?'
int 21h

mov ah, 1
int 21h
mov bl, al
int 21h
mov cl, al

sub bl, cl
add bl, 30h

gotoxy 0,1
mov ah, 9
lea dx, m1  
int 21h
 
mov ah, 2
mov dl, bl
int 21h
