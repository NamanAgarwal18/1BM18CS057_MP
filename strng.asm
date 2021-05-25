.model small
.data
        msg1 db 'EQUAL$'
        msg2 db 'NOTEQ$'
        str1 db 8 dup('$')
        str2 db 8 dup('$')

.code
        mov ax,@data
        mov ds,ax
        mov es,ax
                 
        mov cx,04         
       mov ah,0Ah
        mov dx,offset str1
         
        
        int 21h       
               
        mov cx,04        
        mov ah,0Ah
        mov dx,offset str2
        int 21h 
      
        mov SI, offset str1
        mov DI, offset str2
        mov cx,04h
        cld
        jump: cmpsb
              jnz down
              loop jump
              mov dx,offset msg1
              mov ah,09h
              int 21h
              jmp abc
        down: mov dx,offset msg2
              mov ah,09h
              int 21h
          abc: mov ah,4ch
          int 21h
          end


