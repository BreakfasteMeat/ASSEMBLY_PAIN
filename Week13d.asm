; Filename: Week13d.asm
; Programmer Name: SETH NATHANIEL G. EMIA
; Program Description: asks user to input a digit and stops when zero is inputted
; Date Created: November 8, 2024


.MODEL SMALL
.STACK 100H
.DATA
prompt db 13,10,'Enter a single digit number: ',0
thankyou db 13,10,'Thank you.',0
.CODE
INCLUDE io.mac

main PROC
    mov ax, 1
start_loop:
.startup
    PutStr prompt
    GetInt cx
    cmp cx, 0
    jne start_loop

done:
    PutStr thankyou
    mov ah, 4Ch
    int 21h    
main ENDP
    END main