;Rossetti Jacopo
;3INA
;15/12/2020

TITLE ciclo while do 
.MODEL SMALL    
    
.DATA 
   CR DB 013
   LF DB 010
   LETTERA DB DUP 10 (?)
   MAX DB 0

.CODE                                                                                                

.STARTUP 
    MOV CX,10   
    LEA SI,LETTERA
ciclo:
      
    MOV AH,01h      ; numero del servizio  
    INT 21h         ; interruzione SW di MSDOS
    MOV LETTERA,AL
    CMP AL,'$'
    JE fine
    inc MAX
    cmp MAX,10
    JE fine
    JMP ciclo
fine:
; exit to operating system. 
    mov AH, 4ch     ; numero del servizio  
    INT 21h         ; interruzione SW di MSDOS
END

