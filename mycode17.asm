include emu8086.inc
org 100h

.data
c1 db dup 50("$") ;Using Duplicate string
.code
gotoxy 0, 1

print 'Enter the String:'

lea di, c1   

mov ah, 10
mov dx, di
int 21h

gotoxy 0, 2

print 'Length of string:'

mov bl, c1+1
mov al, bl

aam

add ax, 3030h

mov dh, al
mov dl, ah
mov ah, 2
int 21h

mov dl, dh

mov ah, 2
int 21h

mov ah, 4ch
int 21h