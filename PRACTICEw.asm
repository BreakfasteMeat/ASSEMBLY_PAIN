.model small
.stack 200h
.data
max_len EQU 10
String1 db 'Line1',13,10,'$' ;db = define byte string1 variable and assign 'Line1' value

d1 db "Input: $"
in1 db max_len dup('$')

.code
ProgramStart:
    mov ax,@data
    mov ds,ax
    
    lea dx, String1
    call printString

    lea dx, d1
    call printString

    lea dx, in1
    call inputString

    lea dx,in1
    call printString
    lea dx,in1
    call printString
    


    call endProgram
inputString:
    mov ah, 3Fh
    mov bx, 0
    mov cx, max_len
    int 21h

    mov si, dx
    add si, ax
    mov [si-2],'$'
    ret
printString:
    mov ah, 09h
    int 21h
    ret
endProgram:
    mov ah,4ch              ;   DOS terminate program function
    int 21h                 ;   invoke DOS to end program
end ProgramStart