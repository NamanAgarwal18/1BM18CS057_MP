.model small
.data
    res db ?
.code
    mov ax,@data
    mov ds,ax
    
    mov ah,01
    int 21h
    
    mov bl,al 
    mov al,00
    
    mov cx,04h 
    
    
    back: shl bl,01
          rcl al,01
          loop back   
          
 
    
    mov cl,04
    shl al,cl
    aam
    
    shr bl,cl
    shl ah,cl
    add ah,al 
    mov al,ah
    add al,bl 
    daa
        
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

                         
                
        
          