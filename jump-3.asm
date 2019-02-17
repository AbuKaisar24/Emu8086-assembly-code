include emu8086.inc
org 100h
mov ax, 1

cmp ax, 0

jl negative
jg positive
je zero

negative: mov bx, -1
jmp 

positive: mov bx, 1
jmp 

zero: mov bx, 0
jmp 
