;Filename: EXER32.asm
;First Semester SY 2024-2024
;Student Name: Seth Nathaniel G. Emia
;September 29, 2024
;Description: This program is a calculator. It can do all 4 math operations and the program can loop for forever until the user stops it
.model small
.stack 100h
.data
max_len equ 10
header db 13,10,'THE CALCULATOR',13,10,'Created by: Seth Nathaniel G. Emia',13,10,'Date: September 28, 2024 ',13,10,10,'$'
menu db 'Main Menu',13,10,'$'
addition_menu db 'a - Addition',13,10,'$'
subtraction_menu db 's - Subtraction',13,10,'$'
multiplication_menu db 'm - Multiplication',13,10,'$'
division_menu db 'd - Division',13,10,'$'
exit_menu db 'e - Exit',13,10,'$'
choice db 'Enter your choice: $'
ty db 13,10,10,'Press Enter to continue.$'

firstValue dw 0
secondValue dw 0
remainder dw 0
Ten dw 10
buffer db 6 DUP(?)

charInput db ?
firstInput db 255 DUP('$')
secondInput db 255 DUP('$')
; ---------------- Addition ----------------
addition_title db 'Addition$'
first_addend_input db 13,10,'Enter first addend: $'
first_addend_output db 13,10,'First addend is: $'
second_addend_input db 13,10,'Enter second addend: $'
second_addend_output db 13,10,'Second addend is: $'
addition_output db 13,10,'Sum: $'

; ---------------- Subtraction ----------------
subtraction_title db 'Subtraction$'
minuend_input db 13,10,'Enter minuend: $'
minuend_output db 13,10,'Minuend is: $'
subtrahend_input db 13,10,'Enter subtrahend: $'
subtrahend_output db 13,10,'Subtrahend is: $'
subtraction_output db 13,10,'Difference: $'

; ---------------- Multiplication ----------------
multiplication_title db 'Multiplication$'
multiplicand_input db 13,10,'Enter multiplicand: $'
multiplicand_output db 13,10,'Multiplicand is: $'
multiplier_input db 13,10,'Enter multiplier: $'
multiplier_output db 13,10,'Multiplier is: $'
multiplication_output db 13,10,'Product: $'

; ---------------- Division ----------------
division_title db 'Division$'
dividend_input db 13,10,'Enter dividend: $'
dividend_output db 13,10,'Dividend is: $'
divisor_input db 13,10,'Enter divisor: $'
divisor_output db 13,10,'Divisor is: $'
division_output db 13,10,'Quotient: $'
division_rem_output db 13,10,'Remainder: $'

invalid db 'INVALID CHOICE!$'
exit_message db 'Exit Program$'

.code
start:
;----- CLEAR SCREEN

    mov al, 13h 
    mov ah, 0 
    int 10h
    
    mov al, 03h 
    mov ah, 0 
    int 10h
    

    mov ax,@data
    mov ds,ax
    
    mov dx, offset header
    call printString

    mov dx, offset menu
    call printString
    
    mov ah, 09h
    mov bh, 00h
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
    jnz skipa
    jmp addition
    skipa:
    cmp charInput,'s'
    jnz skips
    jmp subtraction
    skips:
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

    call enterLoop

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

    lea si, firstInput + 2
    mov bx, 0
    call convertLoop
    mov firstValue, bx

    lea si, secondInput + 2
    mov bx, 0
    call convertLoop
    mov secondValue, bx
    
    mov ax, firstValue
    add ax, secondValue
    call ConvertIntegerToString
    
    lea dx, addition_output
    call printString

    lea dx, buffer
    call printString

    call enterLoop

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

    lea si, firstInput + 2
    mov bx, 0
    call convertLoop
    mov firstValue, bx

    lea si, secondInput + 2
    mov bx, 0
    call convertLoop
    mov secondValue, bx
    
    mov ax, firstValue
    sub ax, secondValue
    jns positive
    
    not ax
    add ax, 1
    call ConvertIntegerToString
    
    lea dx, subtraction_output
    call printString

    mov ah,02h
    mov dl,'-'
    int 21h

    lea dx, buffer
    call printString

    call enterLoop
    positive:
    call ConvertIntegerToString
    
    lea dx, subtraction_output
    call printString

    lea dx, buffer
    call printString

    call enterLoop
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

    lea si, firstInput + 2
    mov bx, 0
    call convertLoop
    mov firstValue, bx

    lea si, secondInput + 2
    mov bx, 0
    call convertLoop
    mov secondValue, bx
    
    mov ax, firstValue
    mul bx
    call ConvertIntegerToString
    
    lea dx, multiplication_output
    call printString

    lea dx, buffer
    call printString



    call enterLoop
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

    lea si, firstInput + 2
    mov bx, 0
    call convertLoop
    mov firstValue, bx

    lea si, secondInput + 2
    mov bx, 0
    call convertLoop
    mov secondValue, bx
    
    mov bx, secondValue
    mov ax, firstValue

    mov dx, 0
    div bx
    mov remainder, dx
    
    call ConvertIntegerToString
    
    lea dx, division_output
    call printString

    lea dx, buffer
    call printString

    mov dx, remainder
    cmp dx, 0
    je skip_remainder

    lea dx, division_rem_output
    call printString

    mov ax, remainder
    call ConvertIntegerToString

    lea dx, buffer
    call printString


    skip_remainder:
    call enterLoop
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
    mov ah, 3Fh
    mov bx, 0
    mov cx, max_len
    int 21h

    mov si, dx
    add si, ax
    mov [si-2],'$'
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
convertLoop:
    mov al, [si]         ; Get the next character from the string

    sub al, '0'          ; Convert ASCII character to a number (e.g., '3' -> 3)
    mov ah, 0            ; Clear the high byte of AX (AL contains the number)

    add bx, ax           ; Add the result to BX (BX holds the total number)

    inc si               ; Move to the next character in the string
    mov al, [si]


    cmp al, 13
    je endConvert

    mov ax, 10
    mul bx
    mov bx,ax

    jmp convertLoop      ; Repeat the process for the next character

endConvert:
    ;mov result, bx       ; Store the final result in the result variable
    ret
    


ConvertIntegerToString:
    MOV CX, 0           ; CX will hold the digit count

    ; Convert each digit
ConvertLoopT:
    MOV DX, 0           ; Clear DX
    DIV WORD PTR [Ten]  ; AX / 10, quotient in AX, remainder in DX
    ADD DL, '0'         ; Convert the remainder (digit) to ASCII
    PUSH DX             ; Save the digit on the stack
    INC CX              ; Increment digit count
    TEST AX, AX         ; Check if quotient is zero
    JNZ ConvertLoopT     ; Repeat if not zero

    ; Pop the digits off the stack into the buffer
    LEA DI, buffer      ; Load buffer address into DI
StoreDigitsInString:
    POP DX              ; Get the next digit
    MOV [DI], DL        ; Store the digit in the buffer
    INC DI              ; Move to the next position
    LOOP StoreDigitsInString   ; Repeat for all digits

    MOV BYTE PTR [DI], '$'
    ret

enterLoop:
    mov dx,offset ty
    call printString
wait_for_enter:
    ; Wait for keypress
    mov ah, 01h   ; Function 01h - Check for input
    int 21h       ; DOS interrupt to get input
    cmp al, 0Dh   ; Check if the key is Enter (ASCII 0Dh)
    jne wait_for_enter ; If not Enter, keep waiting
    


    jmp start
ENDPROGRAM:
    mov dx, offset ty
    call printString
wait_again_enter:
    mov ah,01h
    int 21h
    cmp al, 0Dh
    jne wait_again_enter

    mov ah, 4ch
    int 21h
end start