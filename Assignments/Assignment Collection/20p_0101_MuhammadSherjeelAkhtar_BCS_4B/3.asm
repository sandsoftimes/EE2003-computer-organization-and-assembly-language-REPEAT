[org 0x0100]
mov bx, 8
mov ax, 0
;mov ax, array1
;mov bx, array2
mov si, 0
innerloop:
mov ax, [array1+bx]
mov [array2+si], ax
;mov ax, [array2+si]
add si, 2
sub bx, 2
jnz innerloop
mov ax, 0x4c00
int 0x21
array1: dw 1,2,3,4,5
array2: dw 0,0,0,0,0