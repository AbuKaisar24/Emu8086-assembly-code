.MODEL SMALL
.DATA
 c1 DB 10,13,' **********$'
 c2 DB 10,13,' *********$'
 c3 DB 10,13,' ********$'
 c4 DB 10,13,' *******$'
 c5 DB 10,13,' ******$'
 c6 DB 10,13,' *****$'
 c7 DB 10,13,' ****$'
 c8 DB 10,13,' ***$'
 c9 DB 10,13,' **$'
c10 DB 10,13,' *$'        
.CODE

MAIN PROC
    
MOV AX,@DATA ;initialize DS
MOV DS,AX 

MOV AH,9 ; prepare to display
LEA DX,c1
INT 21H 

MOV AH,9 
LEA DX,c2
INT 21H

MOV AH,9 
LEA DX,c3
INT 21H

MOV AH,9 
LEA DX,c4
INT 21H

MOV AH,9 
LEA DX,c5
INT 21H  

MOV AH,9 
LEA DX,c6
INT 21H

MOV AH,9 
LEA DX,c7
INT 21H  

MOV AH,9 
LEA DX,c8
INT 21H

MOV AH,9 
LEA DX,c9
INT 21H  

MOV AH,9 
LEA DX,c10
INT 21H

MOV AH,4CH 
INT 21H 

MAIN ENDP
END MAIN



