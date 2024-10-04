; Filename: EXER21.asm
; Programmer Name: Seth Nathaniel G. Emia
; Date: 9/20/2024
; Description: A program that asks for first, middle, and last name, then displays them together

.model small
.stack 100h
.data
MAXIMUM_STRING_LENGTH EQU 1000
enterFirstName db "Enter First Name: $"
enterMiddleName db "Enter Middle Name: $"
enterLastName db "Enter Third Name: $"
firstName db MAXIMUM_STRING_LENGTH dup (?)
middleName db MAXIMUM_STRING_LENGTH dup (?)
lastName db MAXIMUM_STRING_LENGTH dup (?)

.code
amogus:
    mov ax,@data
    mov ds,ax

;-----------ENTER FIRST NAME PROMPT
    mov dx,offset enterFirstName
    mov ah,9
    int 21h

    mov ah,3fh
    mov bx,0
    mov cx,MAXIMUM_STRING_LENGTH

    mov dx,offset firstName
    int 21h
    
;-----------ENTER MIDDLE NAME PROMPT
    mov dx,offset enterMiddleName
    mov ah,9
    int 21h

    mov ah,3fh
    mov bx,0
    mov cx,MAXIMUM_STRING_LENGTH

    mov dx,offset middleName
    int 21h
    
;-----------ENTER LAST NAME PROMPT
    mov dx,offset enterLastName
    mov ah,9
    int 21h

    mov ah,3fh
    mov bx,0
    mov cx,MAXIMUM_STRING_LENGTH

    mov dx,offset lastName
    int 21h






    mov ah,4ch
    int 21h
end amogus