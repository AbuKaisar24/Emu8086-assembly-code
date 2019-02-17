org 100h
mov ah, 1
l:
 int 21h
 cmp al, 'E'
 je exit
 jmp l
exit:
    mov ah, 4ch
    int 21h