.model small
.stack 100h
.data
    stringData db 'THIS IS A STRING$'
    inputStringData db 255 DUP ('$')

.code
main:
    mov ax, @data       ; Initialize data segment
    mov ds, ax
    

    ;----COLOR BASED ON ROW AND COL INPUTS
    mov ah, 06h     ; DO THIS BEFORE COLORING
    xor cl, cl      
    xor ax, ax

    mov ah, 06h
    mov ch, 24      ; ROW START
    mov dh, 24      ; ROW END
    mov cl, 0      ; COL START
    mov dl, 16      ; COL END
    mov bh, 12h     ; COLOR
    int 10h


    ;-----PRINT STRING
    lea dx, stringData
    mov ah, 09h
    int 21h

    ;-----INPUT STRING
    lea dx, inputStringData
    mov ah, 0Ah
    int 21h

    
    

call ENDPROGRAM


ENDPROGRAM:
    mov ah, 4Ch
    int 21h

end main
