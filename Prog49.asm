; Filename: Prog49.asm
; Programmer Name: SETH NATHANIEL G. EMIA
; Program Description: adds 2 integers
; Date Created: November 8, 2024

;TITLE Parameter passing via registers 
; COMMENT I 
;PROCEX1.ASM 
; Objective: To show parameter passing via registers 
; Input: Requests two integers from the user. 
; Output: Outputs the sum of the input integers.

.MODEL SMALL
.STACK 100H
.DATA
prompt_msgl DB 'Please input the first number: ',0 
prompt_msg2 DB 'Please input the second number: ',0 
sum_msg DB 'The sum is ',0
initial_message db 'Filename: Prog49.asm',13,10,'Programmer Name: SETH NATHANIEL G. EMIA',13,10,'Program Description: adds 2 integers.',13,10,'Date Created: November 8, 2024',13,10,10


.CODE
INCLUDE io.mac

main PROC
    .STARTUP
        PutStr initial_message

    PutStr prompt_msgl ; request first number 
    GetInt CX   ; CX := first number
    nwln 
    PutStr prompt_msg2 ; request second number 
    GetInt DX       ; DX := second number 
    nwln 
    call sum        ; returns sum in AX
    PutStr sum_msg ; display sum 
    PutInt AX
    nwln
done:
  
main ENDP
; -----------------------------------------------------------
; Procedure sum receives two integers in CX and DX. 
; The sum of the two integers is returned in AX. 
;-----------------------------------------------------------
sum PROC
    mov AX,CX ; sum := first number 
    add AX,DX ; sum := sum + second number 
    ret
sum ENDP
    END main