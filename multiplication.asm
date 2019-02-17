include emu8086.inc 
org 100h
.data
     c1 DB ?
     c2 DB ?
     c3 DB ? 
.code
   
      mov ah, 2
      mov dl,'?'
      int 21h
     
      MOV AH,1
      INT 21H
      SUB AL,30H
      MOV c1,AL
     
      INT 21H
      SUB AL,30H
      MOV c2,AL
     
      MUL c1
      
              
      MOV c3,AL
      AAM
     
      ADD AH,30H
      ADD AL,30H 
     
      MOV BX,AX
      
      gotoxy 0,1
      print 'RESULT OF MULTIPLICATION IS:'
      MOV AH,2
      MOV DL,BH
      INT 21H

      MOV AH,2
      MOV DL,BL
      INT 21H
     
      MOV AH,4CH
      INT 21H     
