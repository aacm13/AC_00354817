org 100h

section .text

    XOR AX, AX
    XOR BX, BX
    MOV word CX, 6d
    JMP suma;

suma:
    MOV byte BL,[num+DI]
    ADD AL,BL; 
    INC DI; 
    LOOP suma;
total:
    XOR BX, BX  
    MOV BX, 8d
    DIV BX
    MOV byte [20Ah], AL

exit:
    int 30h

section .data

num DB 3,5,4,8,1,7