.model small
.data
        array dw 10h, 09h, 11h ,25h
.code
        mov ax,@data
        mov ds,ax
        mov dx, 04
        dec dx
 outer: mov cx, dx
        mov SI, offset array
 again: mov ax, [SI]
        cmp ax, [SI+2]
        JBE l1
        xchg ax, [SI+2]
        xchg ax,[SI]
    l1: inc SI
        inc SI
        dec cx
        jnz again
        dec dx
        jnz outer
        mov ah,4ch
        int 21h
end
