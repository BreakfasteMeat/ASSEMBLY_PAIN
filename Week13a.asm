; Filename: Week13a.asm
; Programmer Name: SETH NATHANIEL G. EMIA
; Program Description: prints numbers 1 to 10 in different lines
; Date Created: November 8, 2024


.MODEL SMALL
.STACK 100H
.DATA

.CODE
INCLUDE io.mac

main PROC
    mov ax, 1
start_loop:
    PutInt ax
    inc ax
    cmp ax, 11
    nwln
    jne start_loop

done:
    mov ah, 4Ch
    int 21h    
main ENDP
    END main