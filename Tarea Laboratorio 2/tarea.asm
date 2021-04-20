        org     100h

        section .text

        xor AX,AX
        xor BX,BX
        xor CX,CX
        xor DX,DX

        xor     AX,AX
        mov     byte [200h], 61h
        mov     AX, [200h]
     
        xor     BX,BX
        mov     byte [201h], 61h
        mov     BX, 201h
        mov     CX, [BX]
    
        xor     BX,BX
        mov     byte [202h], 63h
        mov     BX, 202h
        mov     DX, [BX + SI]
       
        mov     byte [203h], 6dh
        mov     DI, [SI + 3h]
        
        int 20h