; Filename: EXER31.ASM 
; Programmer Name: Seth Nathaniel G. Emia 
; Date: September 29, 2024
; Description: This assembly language program will ask for an integer, and prints the numbers from 1 to the inputted integer
.model small
.stack 500h
.data
    max_len equ 10
    input db 6 dup('$')
    input2 db 6 dup('$')    
    prompt db 13,10,'Enter an integer: $'
    ctr dw 1
    Ten DW 10 
    buffer DB 6 DUP(?)  ; 

.code
main:
    mov ax, @data       ; Initialize data segment
    mov ds, ax

    lea dx, prompt
    call printString

    lea dx, input
    call inputString
    


    lea si, input  ; Load the address of input into SI
    mov bx, 0            ; Clear BX, this will hold the final result
    call convertLoop
    

StartCountLoop:
    
    
    mov ax, ctr
    call ConvertToString
    
    lea dx, buffer
    call printString
    
    
    cmp ctr, bx
    je endCountLoop
    add ctr, 1

    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
    
    jmp StartCountLoop

    
endCountLoop:

    call ENDPROGRAM
    
convertLoop:
    mov al, [si]         ; Get the next character from the string

    sub al, '0'          ; Convert ASCII character to a number (e.g., '3' -> 3)
    mov ah, 0            ; Clear the high byte of AX (AL contains the number)

    add bx, ax           ; Add the result to BX (BX holds the total number)

    inc si               ; Move to the next character in the string
    mov al, [si]

    cmp al, 0            ; Check if we've reached the null terminator
    je endConvert
    cmp al, '$'            ; Check if we've reached the null terminator
    je endConvert
    
    mov ax, 10
    mul bx
    mov bx,ax

    jmp convertLoop      ; Repeat the process for the next character

endConvert:
    ;mov result, bx       ; Store the final result in the result variable
    ret
    


ConvertToString:
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
inputString:
    mov ah, 3Fh
    mov bx, 0
    mov cx, max_len
    int 21h

    mov si, dx
    add si, ax
    mov [si-2],'$'
    ret
printString:
    mov ah, 09h
    int 21h
    ret


ENDPROGRAM:

    ; Exit program
    mov ah, 4Ch
    int 21h

end main
