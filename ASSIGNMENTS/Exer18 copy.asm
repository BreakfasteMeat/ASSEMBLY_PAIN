; Filename: EXER18.asm
; Programmer Name: Seth Nathaniel G. Emia
; Date: 9/20/2024
; Description: This assembly language program will get string input and
; display the reverse of the string
.model small
.stack 100h
.data
MAXIMUM_STRING_LENGTH EQU 1000
StringToReverse DB MAXIMUM_STRING_LENGTH DUP (?)
ReverseString   DB MAXIMUM_STRING_LENGTH DUP (?)
.code
ProgramStart:
    mov ax,@data
    mov ds,ax                       ;set DS to point to the data segment
    mov ah,3fh                      ;DOS read from handle function
    mov bx,0                        ;standard input handle
    mov cx,MAXIMUM_STRING_LENGTH    ;read up to the maximum number of characters
    mov dx,OFFSET StringToReverse   ;store the string here
    int 21h                         ;get the string
    and ax,ax                       ;were any characters read?
    jz Done                         ;no, so you're done
    mov cx,ax                       ;put string length in CX, where
                                    ;you can use it as a counter

    push cx                         ;save the string length
    mov bx,offset StringToReverse
    mov si,offset ReverseString
    add si,cx                       ;point to the end of the
    dec si                          ;the reverse string buffer

ReverseLoop:
    mov al,[bx]                     ;get the next character
    mov [si],al                     ;store the characters in reverse order
    inc bx                          ;point to next character
    dec si                          ;point to previous location
                                    ;in reverse buffer
    loop ReverseLoop                ;move next character, if any
    pop cx                          ;get back the string length
    mov ah,40h                      ;DOS write from handle function
    mov bx,1                        ;standard output handle
    mov dx,offset ReverseString     ;print this string
    int 21h                         ;print the reversed string
Done:
    mov ah,4ch                      ;DOS terminate program function
    int 21h                         ;terminate the program
end ProgramStart