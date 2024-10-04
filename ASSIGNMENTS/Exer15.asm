; Filename: EXER15.asm
; Programmer Name: Seth Nathaniel G. Emia
; Date: 9/20/2024
; Description; This assembly language program will continuously get character input and display back input until Enter key is pressed

.model small
.stack 200h
.data

FILEHEADER1 db 'Filename: Exer13.asm',13,10,'Programmer Name: Seth Nathaniel G. Emia',13,10,'$'
FILEHEADER2 db 'Program Description: This assembly language program will get character input and  ',13,10,'$'
FILEHEADER3 db '                     display back input until Enter key is pressed',13,10,'$'
FILEHEADER4 db 'Date Created:  September 20, 2024',13,10,10,10,10,'$'

.code

ProgramStart:
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
    EchoLoop:
        mov ah,1    ;   DOS keyboard input function
        int 21h     ;   get the next key
        cmp al,13   ;   was the key the Enter key?
        jz EchoDone ;   yes, so we are done echoing
        mov dl,al   ;   put the character into DL
        mov ah,2    ;   DOS display output function
        int 21h     ;   display the character
        jmp EchoLoop;   echo the next character
    EchoDone:
    	jmp ENDPROGAM


 
printString:
    mov ah, 09h
    int 21h
    ret

ENDPROGAM:
        mov ah,4ch  ;   DOS terminate program function
        int 21h     ;   terminate the program
end ProgramStart