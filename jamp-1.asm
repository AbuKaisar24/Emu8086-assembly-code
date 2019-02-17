.model small
.code
main proc 
    
    mov ah, 2
    mov dl, 'A'
    mov cx, 26
    
    print_loop:
     
     int 21h
     inc dl
     dec cx
     
     jnz print_loop
     
     mov ah, 4ch
     int 21h
     
     