.model small
.data
        no dW 05H
        array db 01H,02H,03H,04H,5H
        key db 04H
.code
        mov ax,@data
        mov ds,ax
        mov SI,0
        mov DI,no
        sub DI,1

  back: cmp SI,DI
        JA loc3
        mov bx,SI
        mov bh,00H
        add bx,DI
        shr bx,1 
        mov ah,array[bx]
        cmp ah,key
        JE loc1
        JB loc2
        mov DI,bx
        dec DI
        JMP back
  loc2: mov SI,bx
        add SI,1
        jmp back
  loc3: mov cx,0
        JMP ahead
  loc1: mov cx,1
 ahead: mov ah,4ch
        int 21h
end

