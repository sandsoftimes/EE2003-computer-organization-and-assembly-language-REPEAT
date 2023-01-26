[org 0x0100]

mov cx, 9                 

start:

    xor bx, bx                

    mov [swap], bl            

loopy:

    mov al, [data+bx]

    cmp al, [data+bx+1]

    jbe noswap

hswap:

    mov dl, [data+bx+1]

    mov [data+bx+1], al

    mov [data+bx], dl

    mov byte [swap], -1

noswap:

    inc bx                    

    cmp bx, cx                

    jnz loopy

heckswap:

    dec cx                    

    jz  store                

    cmp byte [swap], 0

    jne start

store:

    mov al,[data]

    mov [min],al

    mov bl,[data+9]

    mov [max],bl

mov ax,0x4c00

int 0x21