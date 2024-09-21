; Filename: EXER14.asm
; Programmer Name: Seth Nathaniel G. Emia
; Date: 9/20/2024
; Description: This assembly language program will get character input and display back character input

.model small
.stack 200h
.data
    inputChar db ?  ; variable to store the input character
    inputMsg db 'Enter a character: ','$'
    outputMsg db 'You entered: ','$'
.code
Main:
    ;initializes the data segment
    mov ax, @data
    mov ds, ax

    ;display the input prompt message
    mov dx,offset inputMsg
    mov ah, 09h
    int 21h

    ;read a character from the keyboard
    mov ah,01h  ;   function to read a character
    int 21h     ;   call DOS interrupt
    mov inputChar,al ; Store the character in inputChar

    ;display the output message
    mov dx, offset outputMsg
    mov ah,09h
    int 21h

    ;display the character back
    mov dl, inputChar
    mov ah,02h
    int 21h

    ;exit program
    mov ax, 4C00h
    int 21h
end main