[org 0x0100]

jmp start

num : dw 12,4,5,19,1,2,17,6

small: dw 0

secondsmall: dw 0

secondsmallest:
    
    mov dx, [num+bx]

    mov [secondsmall] ,dx

    sub cx, 1

    jnz compareloop

    jz terminate

nextsmall:
    
    mov dx, ax

    mov [secondsmall] ,dx

    mov ax ,[num+bx]

    mov [small],ax

    add bx ,2

    sub cx,1

    jz terminate

    jnz compareloop

start:

    mov ax ,[num]

    mov [small] ,ax

    mov bx ,2

    mov cx,8

compareloop:

    cmp ax,[num+bx]

    JAE nextsmall

    cmp [num+bx] ,dx

    jb secondsmall

    add bx ,2

    sub cx,1

    jnz compareloop

    jz terminate

terminate:
    mov ax ,0x4c00

    int 0x21