TITLE mycode12: PROGREMMER

.MODEL SMALL
.STACK 100h
.DATA
.CODE
 MAIN PROC
    MOV AH, 2             ; display charater function
    MOV DL, '?'           ; charater is '?'
    INT 21H               ; display charcter 
    
    MOV AH, 1             ; read character function
    INT 21H               ; character in all
    
    MOV BL, AL            ; save it in BL
    
    MOV AH, 2             ; display character function
    MOV DL, 0DH           ; carriage return
    INT 21H               ; execute carrage return
    MOV DL, 0AH           ; line feed
    INT 21H               ; execute line feed
    
    MOV DL, BL            ; get character
    INT 21H               ; and display it
    
    MOV AH, 4CH           ; DOS exit function
    INT 21H               ; exit to DOS
    
    END MAIN
    
ret




