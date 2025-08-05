[org 0x0100]
mov ax, 0
mov bx, 20
innerloop:
add ax, 20
sub bx, 1
jnz innerloop
mov [result], ax
mov ax, 0x4c00
int 0x21
result: dw 0