include emu8086.inc

org 100h
.data 
m1 db ?
m2 db ?
m3 db ? 
m4 db ?
m5 db ?
m6 db ?
m7 db ?
m8 db ?
m9 db ?
m10  db ?
.code


mov ah, 1
int 21h
mov m1, al

int 21h
mov m2, al

int 21h
mov m3, al 

int 21h
mov m4, al

int 21h
mov m5, al

int 21h
mov m6, al

int 21h
mov m7, al

int 21h
mov m8, al

int 21h
mov m9, al

int 21h
mov m10, al

mov ah, 2 
mov dl, m10
gotoxy 0,1
int 21h

mov ah, 2 
mov dl, m9
int 21h

mov ah, 2 
mov dl, m8
int 21h

mov ah, 2 
mov dl, m7
int 21h

mov ah, 2 
mov dl, m6
int 21h

mov ah, 2 
mov dl, m5
int 21h

mov ah, 2 
mov dl, m4
int 21h

mov ah, 2 
mov dl, m3
int 21h

mov ah, 2 
mov dl, m2
int 21h

mov ah, 2 
mov dl, m1
int 21h



     

 
