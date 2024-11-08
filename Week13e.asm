; Filename: Week13d.asm
; Programmer Name: SETH NATHANIEL G. EMIA
; Program Description: Repeatedly display an ATM main menu until the user presses “e” for Exit
; Date Created: November 8, 2024


.MODEL SMALL
.STACK 100H
.DATA
ATM_MENU db 13,10,'CIT-U ATM',13,10,10,'a. Balance Inquiry',13,10,'b. Deposit',13,10,'c. Withdrawal',13,10,'d. Bills Payment',13,10,'e. Exit',13,10,10,'Enter a choice: ',0
a db 'Balance Inquiry',0
b db 'Deposit',0
c db 'Withdrawal',0
d db 'Bills Payment',0
e db 'Exit. Thank you!',0
.CODE
INCLUDE io.mac

main PROC
    
start_loop:
.startup
    nwln
    PutStr ATM_MENU
    GetCh AL
    nwln
    cmp AL, 'a'
    je a_input
    cmp AL, 'b'
    je b_input
    cmp AL, 'c'
    je c_input
    cmp AL, 'd'
    je d_input
    cmp AL, 'e'
    je e_input
done:
    mov ah, 4Ch
    int 21h    
main ENDP

a_input PROC
    PutStr a
    jmp start_loop
a_input ENDP

b_input PROC
    PutStr b
    jmp start_loop
b_input ENDP

c_input PROC
    PutStr c
    jmp start_loop
c_input ENDP

d_input PROC
    PutStr d
    jmp start_loop
d_input ENDP

e_input PROC
    PutStr e
    jmp done
e_input ENDP
    END main