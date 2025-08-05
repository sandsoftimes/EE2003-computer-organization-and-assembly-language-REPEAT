[org 0x0100]
mov ax, 0
mov bx, 0
innerloop:
mov ax, [num1+bx]
add bx, 2
cmp ax, 12 
jc lessloop
cmp ax, 12
jnc greaterloop
lessloop:
add [less], ax
cmp bx, 12
jnz innerloop
greaterloop:
add [greater], ax
cmp bx, 12
jnz innerloop
less: dw 0
greater: dw 0
mov ax, 0x4c00
int 0x21
num1: dw 5,10,8,6,11,20
