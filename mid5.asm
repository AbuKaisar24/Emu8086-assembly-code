INCLUDE EMU8086.INC
org 100h

    MOV AH,1
    INT 21H
    MOV BH,AL
    
    INT 21H
    MOV BL,AL
    gotoxy 0,1
    
    CMP BH,'6'
    JL L2
    
    PRINT 'Old'
    JMP EXIT
    
   L2: 
    CMP BL,'8'
    JLE L3
    JMP L4
    
   L3:
    CMP BH,'1'
    JG L4
    PRINT 'Child'
    JMP EXIT
    
   L4:
    PRINT 'Adult'
    JMP EXIT
    
    EXIT:
    MOV BH,4CH
    INT 21H
