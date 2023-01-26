[org 0x0100]

arr1:dw 1,2,3,4,5

mov cx,8

mov ax,0

firstLoop:

    mov bx,[arr1+ax]

    mov dx,[arr1+cx]

    mov [arr1+ax],dx

    mov [arr1+cx],bx

    add ax,2

    sub cx,2

    cmp cx,0

    jne firstLoop

mov ax,0x4c00

int 0x21

;The output will be stored in the memory as 5,4,3,2,1 in the reverse order.
