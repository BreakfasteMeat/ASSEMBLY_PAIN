.model small
.stack 100h
.data

head db '                     Dear Customer, Welcome to Berlin Bank                      ','$'
row1 db '       [<   Withdrawal    ]                  [         Payment        >]        ','$'
row2 db '       [< Balance Inquiry ]                  [    Recent Transaction  >]        ','$'
row3 db '       [<    Transfer     ]                  [ Credit Card Operations >]        ','$'
row4 db '       [<   Change PIN    ]                  [         Deposit        >]        ','$'

.code
start:
    mov ax,@data
    mov ds,ax


    mov ah,0
    mov al,13h
    int 10h
    mov ah,0
    mov al,03h
    int 10h

    call printNewLine

    mov bl, 40h
    mov cx, 80
    call changeColor
    call printBlankLine
    
    mov bl, 4Fh
    mov cx, 80
    call changeColor

    lea dx, head
    call printString

    mov bl, 40h
    mov cx, 80
    call changeColor
    call printBlankLine

    mov bl, 70h
    mov cx, 80
    call changeColor
    call printBlankLine

    mov bl, 40h
    mov cx, 80
    call changeColor
    call printBlankLine
    
    mov bl, 40h
    mov cx, 80
    call changeColor

    lea dx, row1
    call printString

    mov bl, 40h
    mov cx, 80
    call changeColor
    call printBlankLine

    mov bl, 40h
    mov cx, 80
    call changeColor

    lea dx, row2
    call printString

    mov bl, 40h
    mov cx, 80
    call changeColor
    call printBlankLine

    mov bl, 40h
    mov cx, 80
    call changeColor

    lea dx, row3
    call printString

    mov bl, 40h
    mov cx, 80
    call changeColor
    call printBlankLine

    mov bl, 40h
    mov cx, 80
    call changeColor

    lea dx, row4
    call printString

    mov bl, 40h
    mov cx, 80
    call changeColor
    call printBlankLine

    mov bl, 70h
    mov cx, 80
    call changeColor
    call printBlankLine

    mov bl, 40h
    mov cx, 80
    call changeColor
    call printBlankLine


    mov dh,23
    mov dl,20
    mov bh,0
    mov ah,2
    int 10h



    call ENDPROGRAM
changeColor:
    mov ah,09h
    int 10h
    ret
getString:
    mov ah, 0Ah
    int 21h
    ret

printString:
    mov ah,9
    int 21h
    ret
printBlankLine:
    mov al, ' '
    mov bh, 0
    mov cx, 80
    mov ah, 09h
    int 10h
    call printNewLine
    ret
printNewLine: 
    mov ah,02h 
	mov cl,0Ah
	mov dl,cl
	int 21h 

    ret
ENDPROGRAM:
    mov ah, 4ch
    int 21h
end start