INCLUDE EMU8086.INC
ORG 100H

 MOV AH, 1
 INT 21H
 MOV BL, AL 

 GOTOXY 0,1
 
 CMP BL, 65
 JGE L1
 JMP L4
 
 L1: 
 CMP BL, 90 
 JLE D1
 JG L2      
 
 D1: 
 MOV AH, 2
 ADD BL, 32 
 MOV DL, BL
 INT 21H 
 JMP EXIT
  
 L2: 
 CMP BL, 97
 JGE L3
 
 L3:
 CMP BL, 122
 JLE D2
 JG L4
    
 D2:
 MOV AH, 2
 SUB BL, 32
 MOV DL, BL
 INT 21H 
 JMP EXIT 

 L4: PRINT 'NOT A CHARACTER'       
 
 EXIT:
 MOV AH, 4CH
 INT 21H
 

  
    