; Filename: EXER21.asm
; Programmer Name: Seth Nathaniel G. Emia
; Date: 9/20/2024
; Description: A program that asks for first, middle, and last name, then displays them together

.model small
.stack 100h
.data
rForm db "Registration Form",13,10,'$'
enterFirstName db 13,10,"Enter First Name: $"
enterMiddleName db 13,10,"Enter Middle Name: $"
enterLastName db 13,10,"Enter Last Name: $"
firstName db 50,0,51 DUP('$')
middleName db 50,0,51 DUP('$')
lastName db 50,0,51 DUP('$')
hello db 13,10,"Hello, $"
firstNameLength db 0
middleNameLength db 0
lastNameLength db 0

.code
amogus:
    mov ax,@data
    mov ds,ax

;-----------REGISTRATION FORM
    mov dx,offset rForm
    mov ah,9
    int 21h
;-----------ENTER FIRST NAME PROMPT
    mov dx,offset enterFirstName ; first name message
    mov ah,9
    int 21h

    lea dx, firstName
    mov ah,0Ah
    int 21h

    call printNewLine
    
;-----------ENTER MIDDLE NAME PROMPT
    mov dx,offset enterMiddleName
    mov ah,9
    int 21h

    lea dx, middleName
    mov ah,0Ah
    int 21h

    call printNewLine   
;-----------ENTER LAST NAME PROMPT
    mov dx,offset enterLastName
    mov ah,9
    int 21h

    lea dx, lastName
    mov ah,0Ah
    int 21h

    call printNewLine
;-------------OUTPUT
    mov dx,offset hello
    mov ah,9
    int 21h


    xor bx, bx
    mov bl, firstName[1]
    mov firstName[bx+2], '$'
    mov dx, offset firstName + 2
    mov ah, 9
    int 21h

    mov ah,02h 
	mov cl,' ' 
	mov dl,cl
	int 21h 

    xor bx, bx
    mov bl, middleName[1]
    mov middleName[bx+2], '$'
    mov dx, offset middleName + 2
    mov ah, 9
    int 21h

    mov ah,02h 
	mov cl,' ' 
	mov dl,cl
	int 21h 

    xor bx, bx
    mov bl, lastName[1]
    mov lastName[bx+2], '$'
    mov dx, offset lastName + 2
    mov ah, 9
    int 21h

    mov ah,02h 
	mov cl,'!' 
	mov dl,cl
	int 21h 

    call ENDPROGRAM


    
printNewLine:
    
    mov ah,02h 
	mov cl,0Ah
	mov dl,cl
	int 21h 

    ret



ENDPROGRAM:
    mov ah,4ch
    int 21h
end amogus