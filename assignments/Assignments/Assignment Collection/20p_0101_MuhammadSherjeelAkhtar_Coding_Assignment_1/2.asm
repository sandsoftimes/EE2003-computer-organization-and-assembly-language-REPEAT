[org 0x0100]

jmp start

data: dw 8,7,1,2,4,3,6,5,3,4

size: dw 10

modeval: dw 0

swapflag: dw 0

CalculateMode:

	call bubblesort

	mov bx, 0

l3:

	add bx ,2

l1:

	mov ax ,[data+bx]

l2:

	cmp ax ,[data+bx +2]

	je mode

	add bx,2

	cmp bx , 20

	je l3

	jne l2

mode:

	add cx , 1

	cmp cx,7

	jnz l1

exit:

mov [modeval] , cx 

ret

start:
    
    call CalculateMode

    mov ax, 0x4c00

    int 0x21
