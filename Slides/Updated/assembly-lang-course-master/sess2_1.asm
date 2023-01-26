[org 0x0100]
mov ax,0xb800
mov ex,ax
mov di,0
nextpos:
mov word[es:di],0x0020
;mov word[es:di],0x042B
;0x20 is the space character 
add di,2
cmp di,4000
jne nextpos

;wait for keypress 
mov ah,0x1 ;input char is 0x1 in ah
int 0x21
mov ax,0x4c00 
int 0x21