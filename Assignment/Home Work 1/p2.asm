[org 0x0100]
jmp start
result: dw 0
num1: dw 2,0,0,1,0,1
start:
mov ax, [num1]
mov bx, 0
outerloop:
add bx, 2
cmp ax, [num1+bx]
jnc outerloop
mov [result], ax
mov ax, 0x4c00
int 0x21




