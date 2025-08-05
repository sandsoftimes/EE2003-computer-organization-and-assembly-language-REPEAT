[org 0x0100]
mov bx, 0
mov ax, [num1]
innerloop:
add bx, 2
cmp ax, [num1+bx]
jnc innerloop
mov ax, [num+bx]
num1: dw 2,0,0,1,0,1