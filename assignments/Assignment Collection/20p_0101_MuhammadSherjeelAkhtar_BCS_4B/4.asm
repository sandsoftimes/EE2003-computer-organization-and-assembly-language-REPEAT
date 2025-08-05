[org 0x0100]
mov ax , 0
mov bx , 200
mov cx , 30
outerloop:
cmp ax,100
jbe l1        ; if (a<100)
je l2        ; a == 100 
jmp l3
l1:
    mov ax , cx        ; a = c
    add ax , 10        ; a = a+10
    jmp outerloop
l2:
    mov ax , 0x4c00
    int 0x21
l3:
    add ax , 10      ; a += 10   
    jmp outerloop
