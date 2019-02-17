include emu8086.inc

org 100h
.data
c1 db dup 50 ("$") ;duplicate text
.code

lea si, c1   ;load effective address of source index.
print 'Enter String:'

mov ah, 10
mov dx, si
int 21h

gotoxy 0,1

print 'Length of String is:'
mov bl, c1+1  ;increase the value of c1 data.
mov al, bl
aam  ;	ASCII adjust AX after multiply

add ax, 3030h; move 3030H to AX register t to convert BCD form value to ASCII 
mov dh, al
mov dl, ah
mov ah, 2
int 21h
                                                                   
mov dl, dh
mov ah, 2
int 21h

mov ah,4ch
int 21h