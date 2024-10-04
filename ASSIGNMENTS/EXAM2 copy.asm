;Filename: EXAM2.asm
;CS243 Lab Hands-on Exam
;First Semester SY 2024-2024
;Student Name: Seth Nathaniel G. Emia
;September 28, 2024
.model small
.stack 100h
.data
header db 'THE CALCULATOR',13,10,'Created by: Seth Nathaniel G. Emia',13,10,'Date: September 28, 2024 ',13,10,10,'$'
menu db 'Main Menu',13,10,'$'
addition_menu db 'a - Addition',13,10,'$'
subtraction_menu db 's - Subtraction',13,10,'$'
multiplication_menu db 'm - Multiplication',13,10,'$'
division_menu db 'd - Division',13,10,'$'
exit_menu db 'e - Exit',13,10,'$'
choice db 'Enter your choice: $'
ty db 13,10,10,'Thank you.$'

charInput db ?
firstInput db 255 DUP('$')
secondInput db 255 DUP('$')
; ---------------- Addition ----------------
addition_title db 'Addition$'
first_addend_input db 13,10,'Enter first addend: $'
first_addend_output db 13,10,'First addend is: $'
second_addend_input db 13,10,'Enter second addend: $'
second_addend_output db 13,10,'Second addend is: $'

; ---------------- Subtraction ----------------
subtraction_title db 'Subtraction$'
minuend_input db 13,10,'Enter minuend: $'
minuend_output db 13,10,'Minuend is: $'
subtrahend_input db 13,10,'Enter subtrahend: $'
subtrahend_output db 13,10,'Subtrahend is: $'

; ---------------- Multiplication ----------------
multiplication_title db 'Multiplication$'
multiplicand_input db 13,10,'Enter multiplicand: $'
multiplicand_output db 13,10,'Multiplicand is: $'
multiplier_input db 13,10,'Enter multiplier: $'
multiplier_output db 13,10,'Multiplier is: $'

; ---------------- Division ----------------
division_title db 'Division$'
dividend_input db 13,10,'Enter dividend: $'
dividend_output db 13,10,'Dividend is: $'
divisor_input db 13,10,'Enter divisor: $'
divisor_output db 13,10,'Divisor is: $'

invalid db 'INVALID CHOICE!$'
exit_message db 'Exit Program$'

.code
start:
    mov ax,@data
    mov ds,ax
    
    mov dx, offset header
    call printString

    mov dx, offset menu
    call printString
    
    mov ah, 09h
	mov bl, 60h
	mov cx, 12
	int 10h
    
    mov dx, offset addition_menu
    call printString

    mov ah, 09h
	mov bl, 20h
	mov cx, 15                                
	int 10h

    mov dx, offset subtraction_menu
    call printString

    mov ah, 09h
	mov bl, 30h
	mov cx, 18                                
	int 10h

    mov dx, offset multiplication_menu
    call printString

    mov ah, 09h
	mov bl, 50h
	mov cx, 12                                
	int 10h
    
    mov dx, offset division_menu
    call printString

    mov ah, 09h
	mov bl, 40h
	mov cx, 8                           
	int 10h

    mov dx, offset exit_menu
    call printString

    mov dx, offset choice
    call printString

    call getCharInput
    
    call printNewLine
    call printNewLine

    cmp charInput,'a'
    jz addition
    cmp charInput,'s'
    jz subtraction

    cmp charInput,'m'
    jnz skipm
    call multiplication
    skipm:
    
    cmp charInput,'d'
    jnz skipd
    call division
    skipd:
    cmp charInput,'e'
    jnz skipe
    jmp exit
    skipe:


    mov ah, 09h
	mov bl, 0CEh
	mov cx, 15
	int 10h
    mov dx,offset invalid
    call printString

    call ENDPROGRAM

addition:
    mov ah, 09h
	mov bl, 60h
	mov cx, 8
	int 10h
    mov dx, offset addition_title
    call printString
   
    mov dx, offset first_addend_input
    call printString
   
    call getFirstInput
   
    mov dx, offset second_addend_input
    call printString
   
    call getSecondInput
   
    mov dx, offset first_addend_output
    call printString
    
    MOV AH, 09h
    LEA DX, firstInput + 2  
    INT 21h

    mov dx, offset second_addend_output
    call printString
    
    MOV AH, 09h
    LEA DX, secondInput + 2  
    INT 21h

    call ENDPROGRAM

subtraction:
    mov ah, 09h
	mov bl, 20h
	mov cx, 11
	int 10h
    mov dx, offset subtraction_title
    call printString
    
    mov dx, offset minuend_input
    call printString
    
    call getFirstInput
    
    mov dx, offset subtrahend_input
    call printString
    
    call getSecondInput
    
    mov dx, offset minuend_output
    call printString
    
    MOV AH, 09h
    LEA DX, firstInput + 2  
    INT 21h

    mov dx, offset subtrahend_output
    call printString
    
    MOV AH, 09h
    LEA DX, secondInput + 2  
    INT 21h

    call ENDPROGRAM
multiplication:
    mov ah, 09h
	mov bl, 30h
	mov cx, 14
	int 10h
    mov dx, offset multiplication_title
    call printString
    
    mov dx, offset multiplicand_input
    call printString
    
    call getFirstInput
    
    mov dx, offset multiplier_input
    call printString
    
    call getSecondInput
    
    mov dx, offset multiplicand_output
    call printString
    
    MOV AH, 09h
    LEA DX, firstInput + 2  
    INT 21h

    mov dx, offset multiplier_output
    call printString
    
    MOV AH, 09h
    LEA DX, secondInput + 2  
    INT 21h

    call ENDPROGRAM
division:
    mov ah, 09h
	mov bl, 50h
	mov cx, 8
	int 10h
    mov dx, offset division_title
    call printString
    
    mov dx, offset dividend_input
    call printString
    
    call getFirstInput
    
    mov dx, offset divisor_input
    call printString
    
    call getSecondInput
    
    mov dx, offset dividend_output
    call printString
    
    MOV AH, 09h
    LEA DX, firstInput + 2  
    INT 21h

    mov dx, offset divisor_output
    call printString
    
    MOV AH, 09h
    LEA DX, secondInput + 2  
    INT 21h

    call ENDPROGRAM
exit:
    mov ah, 09h
	mov bl, 40h
	mov cx, 12                           
	int 10h
    
    mov dx, offset exit_message
    call printString
    call ENDPROGRAM



getFirstInput:
    mov ah, 0Ah
    lea dx, firstInput
    int 21h
    ret
getSecondInput:
    mov AH, 0Ah
    lea dx, secondInput
    int 21h
    ret
getCharInput:
    mov ah,1
    int 21h
    mov charInput,al
    ret
getString:

    mov ah, 0Ah
    int 21h
    ret


printString:
    mov ah,9
    int 21h

    ret

printNewLine: 
    mov ah,02h 
	mov cl,0Ah
	mov dl,cl
	int 21h 

    ret
ENDPROGRAM:
    mov dx,offset ty
    call printString
    mov ah, 4ch
    int 21h
end start