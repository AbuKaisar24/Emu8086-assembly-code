INCLUDE EMU8086.INC
ORG 100H

    MOV AH,1
    INT 21H
    MOV BL,AL
    
    GOTOXY 0,1
    
    CMP BL, 65
    JL L3
    CMP BL, 90
    JG L2
    JMP L1
    
   L1:
    ADD BL, 32
    JMP L4
    
   L2:
    CMP BL,61H
    JL L3
    CMP BL,7AH
    JG L3
    SUB BL,20H
    JMP L5
   
    
   L4:
   
    MOV BH,0
    MOV CH,BL
    
    L6: 
    
     INC CH
     CMP CH, 122
     JG L22 
     
     L21:
      MOV AH,2
      MOV DL,CH
      INT 21H
      INC BH
      CMP BH,4
      JG LN
      JMP L6
     L22:
      SUB CH, 26
      JMP L21
    LN:
     MOV AH, 2
     MOV DL, 10
     INT 21H
     MOV DL, 13
     INT 21H
     
     JMP L7
    
    L7:
     DEC BL
     CMP BL, 97
     JL L24
     L23:
      MOV AH,2
      MOV DL,BL
      INT 21H
      INC BH
      CMP BH,9 
      
      JG EXIT
      JMP L7  
      
     L24:
      ADD BL, 26
      JMP L23   
    
   L5:
    MOV BH,0
    MOV CH,BL
    L8:
     INC CH
     CMP CH,90
     JG L26
     L25:
      MOV AH,2
      MOV DL,CH
      INT 21H
      INC BH
      CMP BH,4
      JG LN1
      JMP L8
     L26:
      SUB CH,26
      JMP L25
    LN1:
    GOTOXY 0, 2
     
     JMP L9
    
    L9:
     DEC BL
     CMP BL, 65
     JL L28
     L27:
      MOV AH,2
      MOV DL,BL
      INT 21H
      INC BH
      CMP BH,9
      JG EXIT
      JMP L9
     L28:     
      ADD BL,26
      JMP L27
  L3:
    PRINT 'NOT A LETTER'
    JMP EXIT
       
    EXIT:
    MOV AH,4CH
    INT 21H
