; Filename: Prog37.asm
; Programmer Name: SETH NATHANIEL G. EMIA
; Program Description: convert lowecase letters to uppercase
; Date Created: November 8, 2024

;TITLE uppercase conversion of characters TOUPPER. ASM
;COMMENT |
;    Objective: To convert lowercase letters to 
;   corresponding uppercase letters. 
;    Input: Requests a character string from keyboard. 
;| Output: Prints the input string in uppercase. 


MODEL SMALL 
.STACK 100H 
.DATA 

name_prompt DB 'Please type your name: ',0 
out_msg DB 'Your name in capitals is: ',0 
in_name DB 31 DUP (?)
initial_message db 'Filename: Prog37.asm',13,10,'Programmer Name: SETH NATHANIEL G. EMIA',13,10,'Program Description: convert lowecase letters to uppercase.',13,10,'Date Created: November 8, 2024',13,10,10


.CODE
INCLUDE IO.MAC
main PROC
    .STARTUP
    PutStr initial_message
    PutStr  name_prompt ; request character string 
    GetStr  in_name,31  ; read input character string 
    nwln
    PutStr  out_msg
    mov     BX,OFFSET in_name ; BX := address of in_name
process_char:
    mov     AL, [BX]    ; move the char. to AL 
    cmp     AL,0        ; if it is the NULL character
    je      done        ; conversion done 
    cmp     AL,'a'      ; if (char < 'a') 
    jl      not_lower_case ; not a lowercase letter
    cmp     AL,'z'         ;if (char > 'z') 
    jg      not_lower_case ;not a lowercase letter 
lower_case:
    add     AL,'A'-'a' ; convert to uppercase
not_lower_case:
    PutCh   AL ; write the character
    inc     BX ; BX points to next char.
    jmp     process_char ; go back to process next char. 
    
done:
    nwln
main ENDP
     END main

