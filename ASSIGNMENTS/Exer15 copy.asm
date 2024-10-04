; Filename: EXER15.asm
; Programmer Name: Seth Nathaniel G. Emia
; Date: 9/20/2024
; Description; This assembly language program will continuously get character input and display back input until Enter key is pressed

.model small
.stack 200h
.data
.code
ProgramStart:
    EchoLoop:
        mov ah,1    ;   DOS keyboard input function
        int 21h     ;   get the next key
        cmp al,13   ;   was the key the Enter key?
        jz EchoDone ;   yes, so we are done echoing
        mov dl,al   ;   put the character into DL
        mov ah,2    ;   DOS display output function
        int 21h     ;   display the character
        jmp EchoLoop;   echo the next character
    EchoDone:
        mov ah,4ch  ;   DOS terminate program function
        int 21h     ;   terminate the program
end ProgramStart