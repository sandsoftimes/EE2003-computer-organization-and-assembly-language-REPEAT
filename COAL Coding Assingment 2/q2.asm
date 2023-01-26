[org 0x0100]
jmp start

data: dw 94,80,42

Sum: dw 0

Digit : dw 0

L1:
    mov ax, [data+si]
    xor dx,dx
    call Divide 
    cmp [Sum],dx
    jb swap
    add si ,2
    cmp si,6
    jnz L1
    ret

Divide:
    div bx
    push dx
    push ax
    pop dx 
    pop cx
    call Adder 
    ret

Adder:
    add dx, cx 
    ret

swap:
    mov [Sum], dx
    mov cx, [data + si] 
    mov [Digit], cx
    add si, 2
    cmp si, 6 
    jnz L1
    ret

start:
    mov bx,10
    mov ax, [data]
    mov [Digit], ax
    call L1

mov ax ,0x4c00
int 0x21