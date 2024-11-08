; Filename: Week13c.asm
; Programmer Name: SETH NATHANIEL G. EMIA
; Program Description: Ask user to input a number from 1 to 8. Display error
; message if number entered is less than 1 or greater than 8. If 
; input is correct, horizontally display the numbers, with space 
; between each number, from 1 to the number entered by user. 
; Date Created: November 8, 2024


.MODEL SMALL
.STACK 100H
.DATA
input_prompt db 13,10,'Enter a number from 1 to 8: ',0
error_prompt db 13,10,'Error: Number out of range!',0
.CODE
INCLUDE io.mac

main PROC
    start:
    .STARTUP
    PutStr input_prompt
    GetInt CX
    cmp cx, 1
    jl error
    cmp cx, 8
    jg error
    nwln
    
    mov dx, 1
start_loop:
    PutInt dx
    
    PutCh ' '
    cmp cx, dx
    je done
    inc dx
    jmp start_loop


done:
    mov ah, 4Ch
    int 21h    
main ENDP

error PROC
    PutStr error_prompt
    jmp start
error ENDP
    END main