.model small
.stack 100h
.data
    message db 'Hello, World!', '$'
.code
start:
    ; Initialize the data segment
    mov ax, @data
    mov ds, ax

    ; Set video mode 03h (80x25 text mode)
    mov ax, 03h
    int 10h

    ; Set cursor position at row 10, column 20
    mov ah, 02h      ; Function to set cursor position
    mov bh, 00h      ; Page number (0)
    mov dh, 10       ; Row number (y-coordinate)
    mov dl, 20       ; Column number (x-coordinate)
    int 10h

    ; Set color and write character at the specified coordinates
    mov ah, 09h      ; Function to write character and attribute
    mov al, 'A'      ; Character to display
    mov bh, 00h      ; Page number (0)
    mov bl, 0Ch      
    mov cx, 1        ; Repeat count (write once)
    int 10h
    
    mov ah, 02h      ; Function to set cursor position
    mov bh, 00h      ; Page number (0)
    mov dh, 9       ; Row number (y-coordinate)
    mov dl, 20       ; Column number (x-coordinate)
    int 10h

    lea dx, message
    call printString

    mov ah, 02h      ; Function to set cursor position
    mov bh, 00h      ; Page number (0)
    mov dh, 0       ; Row number (y-coordinate)
    mov dl, 1       ; Column number (x-coordinate)
    int 10h

    
    jmp ENDPROGRAM


    printString:
    mov ah,09h
    int 21h
    ret
    ENDPROGRAM:
    ; Terminate program
    mov ah, 4Ch
    int 21h
end start
