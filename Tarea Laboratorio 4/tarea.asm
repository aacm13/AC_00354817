org     100h

section .text

XOR SI, SI                          
XOR DI, DI
XOR BX, BX
XOR CX, CX
XOR DX, DX
XOR AX, AX

MOV     BP, numArray     
CALL    data        

int     20h

section .data

numArray db 01,02,03,04,05,06,07,08,09,10 
largo equ $-numArray    
dividir equ 02 

data:
    MOV     BL, dividir

for:
    CMP     SI, largo
    JE      end

    MOV     AL, [BP+SI]
    MOV     BH,AL
    DIV     BL
    INC     SI

    CMP     AH, 0
    JE      even
    JNE     odd
        
even:
    MOV     DI, CX
    MOV     [300h+ DI], BH
    INC     DI
    MOV     CX, DI
    jmp     for

odd:
    MOV     DI, DX
    MOV     [320h+DI], BH
    INC     DI
    MOV     DX, DI
    jmp     for

end:
    ret