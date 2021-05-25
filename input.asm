.model small
.code
        mov ah,01
        int 21h
        mov bl,al
        mov ch,al
        

        mov cl,04
        shr bl,cl
        add bl,30h

               
        mov ah,02
        mov dl,bl
        int 21h

        mov ah,02
        mov dl,ch
        int 21h

        mov ah,4ch
        int 21h
        end

