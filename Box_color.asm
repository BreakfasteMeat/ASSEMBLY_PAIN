.model small
.stack 100h
.data
    message db 'Hello, World!', '$'
    x1 dw 0
    y1 dw 0
    x2 dw 0
    y2 dw 0
.code
start:
    ; Initialize the data segment
    mov ax, @data
    mov ds, ax
    
    mov x1,1
    mov y1,1
    mov x2,78
    mov y2, 4

    mov ah, 02h
    mov bh, 00h
    
    mov ah, 09h
    mov bl, 0Ch      ; Attribute: Light red foreground on black background
    mov cx, x2        ; Repeat count (write once)
    sub cx, x1
    int 10h
    call printBox

    

    mov ah, 4Ch
    int 21h
end start
