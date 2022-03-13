[org 0x0100]
mov ax, 0
mov bx, 200
mov cx, 30
innerloop:
cmp ax, 100
jc firstsum
cmp ax, 100
jz break
add ax, 10 
;jmp break
firstsum:
add cx, 10
add ax, cx
break:
mov ax, 0x4c00
int 0x21
;mov [result], 6
result: dw 0