[org 0x0100]
mov ax ,0
mov bx ,0
l1:
mov ax ,[num1+bx]
cmp ax ,12
jb l3
ja l2
l2:
mov [greater] ,ax
jmp end
l3:
mov [less+bx] ,ax
add bx ,2
cmp bx ,12
jnz l1
end:
mov ax ,0x4c00
int 0x21
num1: dw 5,10,8,6,11,20
less: dw 0,0,0,0,0
greater : dw 0
