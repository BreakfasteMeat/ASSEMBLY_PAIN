; Filename: EXER14.asm
; Programmer Name: Seth Nathaniel G. Emia
; Date: 9/20/2024
; Description: This assembly language program will get character input and display back character input

.model small
.stack 200h
.data

FILEHEADER1 db 'Filename: Exer13.asm',13,10,'Programmer Name: Seth Nathaniel G. Emia',13,10,'$'
FILEHEADER2 db 'Program Description: This assembly language program will get character input and  ',13,10,'$'
FILEHEADER3 db '                     display back character input',13,10,'$'
FILEHEADER4 db 'Date Created:  September 20, 2024',13,10,10,10,10,'$'

    inputChar db ?  ; variable to store the input character
    inputMsg db 'Enter a character: ','$'
    outputMsg db 'You entered: ','$'
.code
Main:

;---CLEAR SCREEN BY CHANGING VIDEO MODE
    mov al, 13h 
    mov ah, 0 
    int 10h
    
    mov al, 03h 
    mov ah, 0 
    int 10h
	
    mov ax,@data
    mov ds,ax

	lea dx, FILEHEADER1
	call printString
	
	lea dx, FILEHEADER2
	call printString

	lea dx, FILEHEADER3
	call printString

	lea dx, FILEHEADER4
	call printString


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
	jmp ENDPROGAM


 
printString:
    mov ah, 09h
    int 21h
    ret

ENDPROGAM:
    ;exit program
    mov ax, 4C00h
    int 21h
end main