include emu8086.inc
org 100h
.data
 m1 db 'diu$'
.code

mov ax, @data
mov ds, ax 
mov cx, 10

top:
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
      
    lea dx, m1
    mov ah ,9
    int 21h
    loop top
    