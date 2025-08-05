[org 0x0100]
jmp start
    num: dw 2,1,8,3,4,5,9,7
    length: dw 8
    min: dw 0
    secondly: dw 0    
nextsmallest:
    mov dx, ax
    mov [secondly], dx
    mov ax,[num+bx]
    mov[min],ax
    add bx,2
    sub cx,1
    jz Terminate
    jnz compareloop

start:
    mov ax,[num]
    mov [min],ax
    mov bx,2
    mov cx,[length]

compareloop:
    cmp ax,[num+bx]
    JAE nextsmallest
    add bx,2
    sub cx,1 
    jnz compareloop
    jz Terminate

Terminate:
    mov ax,0x4c00
    int 0x21