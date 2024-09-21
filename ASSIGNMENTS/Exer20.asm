; Filename: EXER20.asm
; Programmer Name: Seth Nathaniel G. Emia
; Date: 9/20/2024
; Description: this program will ask the user for a character and displays if you entered 'A' or not
.model small
.stack 100h
.data
enterChar db "Enter a character: $"
isAMsg db 13,10,10,"Yes, you have entered letter A.$"
isNotAMsg db 13,10,10,"No, you have not entered letter A. You entered character $"
inputChar db ?
.code
simula:
    mov ax,@data
    mov ds,ax
    
    mov dx,offset enterChar
    mov ah,9
    int 21h

    mov ah,1
    int 21h
    mov inputChar,al

    cmp inputChar,'A'
    jz isA
    cmp inputChar, 'A'
    jnz isNotA
    
isA: 
    mov dx, offset isAMsg
    mov ah,9
    int 21h
    jmp DONE
isNotA:
    mov dx,offset isNotAMsg
    mov ah,9
    int 21h

    mov dl, inputChar
    mov ah,02h
    int 21h

    mov ah,02h 
	mov cl,'.' 
	mov dl,cl
	int 21h 
    


DONE:
    mov ah,4ch
    int 21h
end simula