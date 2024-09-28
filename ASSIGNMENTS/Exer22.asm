; Filename: EXER22.asm
; Programmer Name: Seth Nathaniel G. Emia
; Date: 9/20/2024
; Description: A program that asks for The student information and outputs them out 

.model small
.stack 100h
.data

MAX_LEN EQU 1000
citu db 'Cebu Institute of Technology - University',13,10,'STUDENT ENROLLMENT FORM',13,10,10,'Please enter the following information:',13,10,'$'

i_id db "Student ID  Number: $"
i_fn db "First Name: $"
i_mn db "Middle Name: $"
i_ln db "Last Name: $"
i_add db "Address: $"
i_course db "Course: $"
i_year db "Year: $"
i_bdaym db "Birthday Month: $"
i_bdayd db "Birthday Day: $"
i_bdayy db "Birthday Year: $"
i_email db "Email Address: $"



summary db 'SUMMARY',13,10,"Please check if all information are correct.$"

o_id db "ID Number: $"
o_fullName db "Full Name: $"
o_address db "Address: $"
o_cy db "Course & Year: $"
o_bday db "Birthday: $"
o_email db "Email Address: $"

exit db "Thank you for enrolling at CIT-U",13,10,"Copyright 2024",13,10,"Programmer: Seth Nathaniel G. Emia$"

id db 50,0,51 dup('$')
fn db 50,0,51 dup('$')
mn db 50,0,51 dup('$')
ln db 50,0,51 dup('$')
addr db 50,0,51 dup('$')
course db 50,0,51 dup('$')
year db 50,0,51 dup('$')
bmonth db 50,0,51 dup('$')
bday db 50,0,51 dup('$')
byear db 50,0,51 dup('$')
email db 50,0,51 dup('$')


.code
start:
    mov ax,@data
    mov ds,ax
    call printNewLine
    mov dx,offset citu
    call printString
;-----------INPUT SECTION------------
;---------id
    mov dx, offset i_id
    call printString

    mov dx,offset id
    call getString
    call printNewLine
;---------first nmame
    mov dx, offset i_fn
    call printString

    mov dx,offset fn
    call getString
    call printNewLine
;---------middle name
    mov dx, offset i_mn
    call printString


    mov dx,offset mn
    call getString
    call printNewLine
;---------last name
    mov dx, offset i_ln
    call printString


    mov dx,offset ln
    call getString
    call printNewLine
;---------address
    mov dx, offset i_add
    call printString


    mov dx,offset addr
    call getString
    call printNewLine
;---------course
    mov dx, offset i_course
    call printString


    mov dx,offset course
    call getString
    call printNewLine
;---------year
    mov dx, offset i_year
    call printString


    mov dx,offset year
    call getString
    call printNewLine
;---------bmonth
    mov dx, offset i_bdaym
    call printString


    mov dx,offset bmonth
    call getString
    call printNewLine
;---------bday
    mov dx, offset i_bdayd
    call printString


    mov dx,offset bday
    call getString
    call printNewLine
;---------byear
    mov dx, offset i_bdayy
    call printString


    mov dx,offset byear
    call getString
    call printNewLine
;---------email
    mov dx, offset i_email
    call printString


    mov dx,offset email
    call getString
    call printNewLine

    call printNewLine

    mov dx,offset summary
    call printString

    call printNewLine
    call printNewLine
;--------OUTPUT SECTION------------
 
;----ID NUMBER
    mov dx, offset o_id
    call printString
    
    xor bx, bx
    mov bl, id[1]
    mov id[bx+2], '$'
    mov dx, offset id + 2
    mov ah, 9
    int 21h
    call printNewLine


;----FULL NAME
    mov dx, offset o_fullName
    call printString
    
    xor bx, bx
    mov bl, ln[1]
    mov ln[bx+2], '$'
    mov dx, offset ln + 2
    mov ah, 9
    int 21h


    mov ah,02h 
	mov cl,',' 
	mov dl,cl
	int 21h 

    mov ah,02h 
	mov cl,' ' 
	mov dl,cl
	int 21h
    
    xor bx, bx
    mov bl, fn[1]
    mov fn[bx+2], '$'
    mov dx, offset fn + 2
    mov ah, 9
    int 21h

    mov ah,02h 
	mov cl,' ' 
	mov dl,cl
	int 21h

    xor bx, bx
    mov bl, mn[1]
    mov mn[bx+2], '$'
    mov dx, offset mn + 2
    mov ah, 9
    int 21h 

    call printNewLine
;-----ADDRESS
    mov dx, offset o_address
    call printString

    xor bx, bx
    mov bl, addr[1]
    mov addr[bx+2], '$'
    mov dx, offset addr + 2
    mov ah, 9
    int 21h 
    
    call printNewLine

;----Course & Year
    mov dx, offset o_cy
    call printString

    xor bx, bx
    mov bl, course[1]
    mov course[bx+2], '$'
    mov dx, offset course + 2
    mov ah, 9
    int 21h 

    mov ah,02h 
	mov cl,' ' 
	mov dl,cl
	int 21h

    xor bx, bx
    mov bl, year[1]
    mov year[bx+2], '$'
    mov dx, offset year + 2
    mov ah, 9
    int 21h 

    call printNewLine

;----Birthday
    mov dx, offset o_bday
    call printString

    xor bx, bx
    mov bl, bmonth[1]
    mov bmonth[bx+2], '$'
    mov dx, offset bmonth + 2
    mov ah, 9
    int 21h 

    mov ah,02h 
	mov cl,' ' 
	mov dl,cl
	int 21h

    xor bx, bx
    mov bl, bday[1]
    mov bday[bx+2], '$'
    mov dx, offset bday + 2
    mov ah, 9
    int 21h 

    mov ah,02h 
	mov cl,',' 
	mov dl,cl
	int 21h
    mov ah,02h 
	mov cl,' ' 
	mov dl,cl
	int 21h

    xor bx, bx
    mov bl, byear[1]
    mov byear[bx+2], '$'
    mov dx, offset byear + 2
    mov ah, 9
    int 21h 
    call printNewLine
;----EmailAddr
    mov dx, offset o_email
    call printString

    xor bx, bx
    mov bl, email[1]
    mov email[bx+2], '$'
    mov dx, offset email + 2
    mov ah, 9
    int 21h
    call printNewLine
    call printNewLine

;---Exit
    mov dx, offset exit
    call printString

    call ENDPROGRAM

getString:

    mov ah, 0Ah
    int 21h
    ret


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
    mov ah,4ch
    int 21h
end start