; Filename: EXER23.asm
; Programmer Name: Seth Nathaniel G. Emia
; Date: 9/20/2024
; Description: ATM main menu screen 

.model small
.stack 100h
.data

header db 'Cebu Institute of Technology - University',13,10,'Automated Teller Machine$'
menu db 10,10,'Main Menu',10,'1 Balance Inquiry', 0Ah, '2 Withdrawal', 0Ah, '3 Deposit', 0Ah, '4 Transfer', 0Ah, '5 Bills Payment', 0Ah, '6 Change Pin', 0Ah, '7 Exit', 0Ah, 'Enter number of your choice: $'

res_1 db '1 Balance Inquiry.$'
res_2 db '2 Withdrawal.$'
res_3 db '3 Deposit.$'
res_4 db '4 Transfer.$'
res_5 db '5 Bills Payment.$'
res_6 db '6 Change Pin.$'
res_7 db '7 Exit.$'
choicePrompt db 'Enter number of your choice: $'

choice db 13,10,10,'You have chosen $'

exit_msg db ,13,10,10,"Thank you for banking with us!",13,10,"Copyright 2024",13,10,"Programmer: Seth Nathaniel G. Emia",13,10,"$"


.code
start:
    call printNewLine
    mov ax,@data
    mov ds,ax

    mov dx, offset header
    call printString
    call printNewLine

    mov dx, offset menu
    call printString

    mov ah, 01h
    int 21h

    mov dx, offset choice
    call printString

    cmp al,'1'
    jz one
    cmp al,'2'
    jz two
    cmp al,'3'
    jz three
    cmp al,'4'
    jz four
    cmp al,'5'
    jz five
    cmp al,'6'
    jz six
    cmp al,'7'
    jz seven

    jmp ENDPROGRAM

one:
    mov dx, offset res_1
    call printString
    jmp ENDPROGRAM
two:
    mov dx, offset res_2
    call printString
    jmp ENDPROGRAM
three:
    mov dx, offset res_3
    call printString
    jmp ENDPROGRAM
four:
    mov dx, offset res_4
    call printString
    jmp ENDPROGRAM
five:
    mov dx, offset res_5
    call printString
    jmp ENDPROGRAM
six:
    mov dx, offset res_6
    call printString
    jmp ENDPROGRAM
seven:
    mov dx, offset res_7
    call printString
    jmp ENDPROGRAM
printString:
    mov ah,9
    int 21h

    ret

printNewLine: 
    mov ah,02h 
	mov cl,0Ah
	mov dl,cl
	int 21h 

    ret
ENDPROGRAM:
    mov dx, offset exit_msg
    call printString
    mov ah,4ch
    int 21h
end start