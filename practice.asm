.model small
.stack 100h
.data
;INITIALIZE A STRING VARIABLE

helloWorld db "Hello World!$"

.code
start:
    mov ax, @data
    mov ds,ax
;CHANGE BAKCGROUND COLOR
    mov ah,09h
	mov bl,0A4h ; RED
	mov cx, 4;
	int 10h

;DISPLAY STRING VARIABLE
    

    mov dx, offset helloWorld
    mov ah, 09h
    int 21h

;DISPLAY ONE SINGLE CHARACTER
    mov ah,02h
    mov dl,' '
    int 21h

int 27h
end start
