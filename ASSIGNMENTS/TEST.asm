.MODEL SMALL
.STACK 100h

.DATA
    msgInput DB 'Enter a string: $'
    userInput DB 255 DUP('$') ; Buffer to store input string
    msgOutput DB 13, 10, 'You entered: $' ; New line and message to display output string

.CODE
    MAIN PROC
        ; Initialize the data segment
        MOV AX, @DATA
        MOV DS, AX

        ; Display the input prompt
        MOV AH, 09h
        LEA DX, msgInput
        INT 21h

        ; Take string input
        MOV AH, 0Ah            ; DOS input function
        LEA DX, userInput       ; Load address of input buffer
        INT 21h

        ; Display the output prompt
        MOV AH, 09h
        LEA DX, msgOutput
        INT 21h

        ; Display the entered string
        MOV AH, 09h
        LEA DX, userInput + 2   ; Skip the first byte which contains the max buffer size
        INT 21h

        ; Exit the program
        MOV AH, 4Ch
        INT 21h
    MAIN ENDP
END MAIN
