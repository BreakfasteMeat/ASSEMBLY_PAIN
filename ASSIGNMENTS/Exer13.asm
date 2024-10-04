; Filename: EXER13.asm
; Programmer Name: Seth Nathaniel G. Emia
; Date: 9/20/2024
; Description: This assembly language program will display multiple string variables on separate lines

.model small
.stack 200h
.data

String1 db 'Line1',0dh,0ah,'$'
String2 db 'Line2',0dh,0ah,'$'
String3 db 'Line3',0dh,0ah,'$'
FILEHEADER1 db 'Filename: Exer13.asm',13,10,'Programmer Name: Seth Nathaniel G. Emia',13,10,'$'
FILEHEADER2 db 'Program Description: This assembly language program will display multiple  ',13,10,'$'
FILEHEADER3 db '                     string variables on separate line',13,10,'$'
FILEHEADER4 db 'Date Created:  September 20, 2024',13,10,10,10,10,'$'
; carriage return (ASCII code 0Dh) positions the cursor to the left side of the current line of characters
; line feed (ASCII code 0Ah) moves the cursor down one line on the output device

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

    mov ah,9                ;   DOS print string function
    mov dx, offset String1  ;   1st string to print
    int 21h                 ;   invoke DOS to print string

    mov dx, offset String2  ;   2nd string to print
    int 21h                 ;   invoke DOS to print string

    mov dx, offset String3  ;   3rd string to print
    int 21h                 ;   invoke DOS to print string

    mov ah,4ch              ;   DOS terminate program function
    int 21h                 ;   invoke DOS to end program
    jmp ENDPROGAM


 
printString:
    mov ah, 09h
    int 21h
    ret

ENDPROGAM:
end ProgramStart