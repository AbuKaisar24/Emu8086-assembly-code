org 100h

mov ax, 2
mov bx, 1

cmp ax, bx

jg l1
jl l2

l1: mov cx, ax
l2: mov cx, bx 
