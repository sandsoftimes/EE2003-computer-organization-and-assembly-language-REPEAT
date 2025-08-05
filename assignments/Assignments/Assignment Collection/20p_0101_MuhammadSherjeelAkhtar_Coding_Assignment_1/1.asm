[org 0x0100]

Num: db 0

result: dw 0

mov ax,0

firstloop:

    add ax,20

    add [Num],1

    cmp [Num],20

    jne firstloop

mov [result],ax

mov ax, 0x4c00

int 0x21