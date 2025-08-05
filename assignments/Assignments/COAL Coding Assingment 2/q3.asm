[org 0x0100]
jmp main

output: dw 0

addition1:
    push bp
    mov bp, sp
    sub sp, 2             
    push ax
    push dx
    mov ax, [bp+6]         
    mov dx, [bp+4]
    add ax,bx              
    mov word[bp-2],ax      
    push word[bp-2]        
    push word[bp+6]        
    push word[bp+4]        
    call addition2      
    add sp, 2
    pop dx
    pop ax
    pop bp
    ret 4

addition2:
    push bp 
    mov bp,sp
    sub sp,2               
    push ax
    mov ax, [bp + 8]       
    add ax, [bp+6]          
    add ax, [bp+4]         
    mov [bp -2], ax       
    mov [output], ax        
    add sp, 2               
    pop ax
    pop bp 
    ret 6

main:
    mov ax, 2
    mov bx, 4
    push ax           
    push bx           
    call addition1   
    mov dx, [output]  

mov ax , 0x4c00
int 0x21