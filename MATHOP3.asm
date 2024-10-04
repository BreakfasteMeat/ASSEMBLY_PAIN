.model small
.stack 100h
.data

; input digits
in_1        db 0
in_10       db 0
in_100      db 0

; output digits
out_1       db 0
out_10      db 0
out_100     db 0

; display
d_prompt    db 'Input 3 digit number: $'
d_result    db 'Result: $'
d_crlf      db 0Dh,10,'$'

.code
start:
    mov ax,@data    ; setup data segment
    mov ds,ax

    lea dx,d_prompt ; display prompt
    mov ah,09h
    int 21h

    mov ah,01h      ; read 3 decimal digits and turn them to numbers
    int 21h
    sub al,30h
    mov in_1,al

    int 21h
    sub al,30h
    mov in_10,al

    int 21h
    sub al,30h
    mov in_100,al

    cmp in_1,00h    ; convert them to a byte
    jg add_hundreds

add_units:
    mov bl,in_100
    add out_1,bl
    jmp check_tens

add_hundreds:
    add out_1, 100
    dec in_1
    cmp in_1,00h
    jne add_hundreds

check_tens:
    cmp in_10,00h
    jg add_tens
    jmp compute

add_tens:
    add out_1,10
    dec in_10
    cmp in_10,00h
    jg add_tens
    jmp add_units

compute:
    sub out_1, 20       ; substract 20 to result

    cmp out_1, 100
    jge above_99        ; ***bug*** should use unsigned comparison (jae)

convert_tens:
    cmp out_1,10
    jge between_10_and_99
    jmp display_result

above_99:
    sub out_1,100       ; convert hundreds
    inc out_100 
    cmp out_1,100
    jge above_99        ; ***bug*** should use unsigned comparison (jae)
    jmp convert_tens

between_10_and_99:
    sub out_1,10        ; convert tens
    inc out_10
    cmp out_1,10
    jge between_10_and_99

display_result:
    add out_100,30h     ; convert digits to characters
    add out_10,30h
    add out_1,30h

    lea dx,d_crlf       ; display line break
    mov ah,09h
    int 21h

    lea dx,d_result     ; display result message
    mov ah,09h
    int 21h

    mov dl,out_100      ; display output
    mov ah,02h
    int 21h

    mov dl,out_10
    mov ah,02h
    int 21h

    mov dl,out_1
    mov ah,02h
    int 21h

    mov ah,4Ch      ; terminate program
    int 21h
end start