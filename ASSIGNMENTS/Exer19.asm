; Filename: EXER19.asm
; Programmer Name: Seth Nathaniel G. Emia
; Date: 9/20/2024
; Description: This assembly language will ask the user to input 3 characters and display each character on their own line
.model small
.stack 200h
.data
firstChar db ?
secondChar db ?
thirdChar db ?
enterFirst db 'Enter first character: $'
enterSecond db 13,10,10,'Enter second character: $'
enterThird db 13,10,10,'Enter third character: $'
firstCharIs db 13,10,10,'The first character is $'
secondCharIs db 13,10,10,'The second character is $'
thirdCharIs db 13,10,10,'The third character is $'
.code

magsugod:
    mov ax, @data
    mov ds, ax
;---ENTER FIRST CHARACTER
    mov dx,offset enterFirst
    mov ah, 09h
    int 21h

    mov ah,01h
    int 21h
    mov firstChar,al
;---ENTER SECOND CHARACTER
    mov dx,offset enterSecond
    mov ah, 09h
    int 21h

    mov ah,01h
    int 21h
    mov secondChar,al
;---ENTER THIRD CHARACTER
    mov dx,offset enterThird
    mov ah, 09h
    int 21h

    mov ah,01h
    int 21h
    mov thirdChar,al

;---DISPLAY FIRST CHARACTER
    mov dx, offset firstCharIs
    mov ah,09h
    int 21h

    mov dl, firstChar
    mov ah,02h
    int 21h

    mov ah,02h 
	mov cl,'.' 
	mov dl,cl
	int 21h 

;---DISPLAY SECOND CHARACTER
    mov dx, offset secondCharIs
    mov ah,09h
    int 21h

    mov dl, secondChar
    mov ah,02h
    int 21h

    mov ah,02h 
	mov cl,'.' 
	mov dl,cl
	int 21h 

;---DISPLAY THIRD CHARACTER
    mov dx, offset thirdCharIs
    mov ah,09h
    int 21h

    mov dl, thirdChar
    mov ah,02h
    int 21h

    mov ah,02h 
	mov cl,'.' 
	mov dl,cl
	int 21h 

    mov ax, 4c00h
    int 21h
end magsugod
