org 100h

section .text
        XOR AX, AX; 
        XOR CX, CX; 
        MOV AX, 1d; 
        MOV word CX, 5d ;
        JMP fact;
fact:
        MUL CX
        LOOP fact;
total:
        
        MOV word [20Bh], AX         
exit:
        int 20h