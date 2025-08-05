[org 0x0100]
jmp start

Values : dw 6, 4, 72, 94, 9, 1, 48

Even  :dw 0

Odd : dw 0

numbercheck:
    mov ax,[Values+si]
    add si ,2
    div bx
    cmp dx,0
    je Loop1
    mov cx ,0
    call oddcal
    cmp si ,14
    jnz numbercheck
    ret

oddcal:
    inc cx
    add [Odd] ,cx
    ret

Loop1:
    mov cx, 0
    call evencal
    cmp si ,14
    jnz numbercheck
    ret

evencal:
    inc cx
    add [Even] ,cx 
    ret

start : 
    mov ax , 0
    mov bx ,2
    mov cx,0
    mov dx,0
    mov si ,0
    call numbercheck

mov ax, 0x4c00
int 0x21