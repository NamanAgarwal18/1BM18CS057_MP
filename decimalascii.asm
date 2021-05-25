.model small
.data
    ques db 52h
    
.code
    mov ax,@data
    mov ds,ax
    
    mov al,ques  
    
    mov ah,00  
    mov cx,04h  
             
    mov dl,16h
    div dl  
    mov dh,al
    mov cl,04
    shl al,cl  
    
    mov dl,al
    mov bl,ques
    mov al,10h 
    mov ah,00h
    mul dh
    aam
    
    mov cl,04
    shl ah,cl
    add al,ah
    
    
    sub bl,al
    mov al,bl
    das
    
    add al,dl
    
    
    mov ah,02h
    mov dl,al
    int 21h
    
    mov ah,4ch
    int 21h
    end
    