[org 0x0100]
jmp start
data: dw 60,55,45,50
swapflag:db 0
swap:
    mov ax,[bx+si]
    xchg ax,[bx+si+2]
    mov [bx+si],ax 
    ret
bubblesort:
    dec cx
    shl cx,1
    mainloop:
        mov si,0
        mov byte[swapflag],0
        innerloop: 
            mov ax,[bx+si]
            cmp ax,[bx+si+2]
            jbe noswap
                call swap
                mov byte[swapflag],1
            noswap:
                add si,2
                cmp si,cx
                jne innerloop
            cmp byte[swap],1
            je mainloop
        ret
start:
    mov bx,data
    mov cx,4
    ;make a function call
    call bubblesort
    ;data is now sorted!
    mov ax,0x4c00
    int 0x21
