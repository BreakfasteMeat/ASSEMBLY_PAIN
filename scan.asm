.model small
.stack 100h
.data
inputBuffer db 80 dup('$')   ; Buffer for input string (max 79 characters + '$' terminator)
.code
main proc
    ; Read a string from standard input
    mov ah, 0Ah           ; DOS function: Buffered Keyboard Input
    lea dx, inputBuffer   ; Load address of the buffer
    int 21h               ; Call DOS interrupt

    ; Display the string
    mov ah, 09h           ; DOS function: Display String
    lea dx, inputBuffer   ; Load address of the buffer
    int 21h               ; Call DOS interrupt

    ; Exit the program
    mov ah, 4Ch           ; DOS function: Terminate Program
    int 21h               ; Call DOS interrupt
main endp
end main
