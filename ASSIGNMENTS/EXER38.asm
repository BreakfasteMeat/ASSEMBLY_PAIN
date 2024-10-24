; Filename: EXER38.asm
; Programmer Name: Seth Nathaniel G. Emia
; Date: October 18, 2024
; Description: this program will ask for a number input and displays if the number
;              is lesser or equal to 5
.model small
.stack 100h
.data
enterChar db "Enter a number (0-9): $"
equal db 13,10,10,"The number is equal to 5$"
greater db 13,10,10,"The number is greater than 5.$"
lesser db 13,10,10,"The number is less than 5.$"
inputChar db ?
.code
start:
    mov ax,@data
    mov ds,ax
    
    mov dx,offset enterChar
    mov ah,9
    int 21h

    mov ah,1
    int 21h
    sub al, '0'
    mov inputChar,al


    cmp inputChar,5
    je equalToFive 
    jl lessThanFive
    jg greaterThanFive
    call DONE
equalToFive:
    mov dx,offset equal
    mov ah,9
    int 21h
    call DONE
lessThanFive:
    mov dx,offset lesser
    mov ah,9
    int 21h
    call DONE
greaterThanFive:
    mov dx,offset greater
    mov ah,9
    int 21h
    call DONE
DONE:
    mov ah,4ch
    int 21h
end start