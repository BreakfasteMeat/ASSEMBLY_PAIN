.model small
.stack 100h
.data
    inputString db "1234", 0  ; The input string representing the number
    result dw 0               ; To store the resulting integer
    Ten DW 10 
    buffer DB 6 DUP(?)  ; 

.code
main:
    mov ax, @data       ; Initialize data segment
    mov ds, ax

    ; Initialize registers
    lea si, inputString  ; Load the address of inputString into SI
    mov bx, 0            ; Clear BX, this will hold the final result
    
convertLoop:
    mov al, [si]         ; Get the next character from the string
    cmp al, 0            ; Check if we've reached the null terminator
    je endConvert        ; If yes, jump to end

    sub al, '0'          ; Convert ASCII character to a number (e.g., '3' -> 3)
    mov ah, 0            ; Clear the high byte of AX (AL contains the number)

    mov cx, 10           ; Set CX to 10 for multiplication
    mul cx               ; Multiply AX by 10 (this shifts digits left)
    add bx, ax           ; Add the result to BX (BX holds the total number)

    inc si               ; Move to the next character in the string
    jmp convertLoop      ; Repeat the process for the next character

endConvert:
    mov result, bx       ; Store the final result in the result variable
    
    mov ax, result
    call ConvertToDec

ConvertToDec PROC
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
OutputDigits:
    POP DX              ; Get the next digit
    MOV [DI], DL        ; Store the digit in the buffer
    INC DI              ; Move to the next position
    LOOP OutputDigits   ; Repeat for all digits

    MOV BYTE PTR [DI], '$'

    LEA DX, buffer      ; Load the address of the buffer
    MOV AH, 09H         ; DOS service to display string
    INT 21H             ; Call DOS interrupt


    ; Exit program
    mov ah, 4Ch
    int 21h

end main
