[org 0x0100]

jmp start

num : dw 2,4,5,19,7,8,17,6

max: dw 0

secondlargest: dw 0

secondlargesttt:

    mov dx, [num+bx]

    mov [secondlargest] ,dx

    sub cx, 1

    jnz compareloop

    jz terminate

nextlargest:

    mov dx, ax

    mov [secondlargest] ,dx

    mov ax ,[num+bx]

    mov [max],ax

    add bx ,2

    sub cx,1

    jz terminate

    jnz compareloop

start:

    mov ax ,[num]

    mov [max] ,ax

    mov bx ,2

    mov cx,8

compareloop:    

    cmp ax,[num+bx]

    JNAE nextlargest

    cmp [num+bx] ,dx

    ja secondlargesttt

    add bx ,2

    sub cx,1

    jnz compareloop

    jz terminate

terminate:

    mov ax ,0x4c00

    int 0x21