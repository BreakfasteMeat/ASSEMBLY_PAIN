; Filename: EXER12.asm
; Programmer Name: Seth Nathaniel G. Emia
; Date: 9/20/2024
; Description: This assembly language program will display multiple string variables on a single line
.model small
.stack 200h
.data
String1 db 'Line1','$' ;db = define byte string1 variable and assign 'Line1' value
String2 db 'Line2','$'
String3 db 'Line3','$'
FILEHEADER1 db 'Filename: Exer12.asm',13,10,'Programmer Name: Seth Nathaniel G. Emia',13,10,'$'
FILEHEADER2 db 'Program Description: This assembly language program will display multiple  ',13,10,'$'
FILEHEADER3 db '                     string variables on a single line',13,10,'$'
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
    
    mov ax,@data
    mov ds,ax

    mov ah,9                ;   DOS print string function
    mov dx,offset String1   ;   1st string to print
    int 21h                 ;   invoke DOS to print string

    mov dx,offset String2   ;   2nd string to print
    int 21h                 ;   invoke DOS to print string

    mov dx,offset String3   ;   3rd string to print
    int 21h                 ;   invoke DOS to print string
	jmp ENDPROGAM


 
printString:
    mov ah, 09h
    int 21h
    ret

ENDPROGAM:
    mov ah,4ch              ;   DOS terminate program function
    int 21h                 ;   invoke DOS to end program
end ProgramStart