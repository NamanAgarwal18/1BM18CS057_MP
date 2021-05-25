.model small
.code
        mov ah,01h
        int 21h

        mov bl,al
        mov ch,al

        mov cl,04
        and bl,0F0h
        shr bl,cl
        add bl,30h
        

        and ch, 0Fh
        add ch,30h
        

        mov ah,02h
        mov dl,bl
        int 21h

        mov ah,02h
        mov dl,ch
        int 21h

        mov ah,4ch
        int 21h
        end
