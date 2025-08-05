[org 0x0100]
mov greater, 0
mov less, 0
mov bx, 0
mov ax, [num1+bx]
innerloop:
add bx, 2
cmp ax, 12
jc sum
sum:
cmp ax, 12
jnc sum
add [greater], ax
add less, [num1]
num1: dw 5,10,8,6,11,20
less: dw 0
greater: dw 0

