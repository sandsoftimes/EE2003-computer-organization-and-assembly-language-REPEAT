[org 0x0100]
Array: dw 3, 9, 56, 43, 1, 2, 23
Even: dw 0,0,0,0,0,0,0,0 
Odd: dw 0,0,0,0,0,0,0,0,0
eveny:
mov bx,2
mov si,0
mov cx,6
outerloop:
mov ax, [Array+si]
div bx
add si,2
cmp dx,0
jne outerloop
mov [Even+si],ax
oddy:
mov bx,2
mov si,0
mov cx,6
outerloop:
mov ax, [Array+si]
div bx
cmp dx,0
add si,2
je outerloop
mov [Odd+si],ax
start:
call eveny
call oddy
int 0x21
mov ax,0x4c00
