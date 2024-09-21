; Filename: EXER21.asm
; Programmer Name: Seth Nathaniel G. Emia
; Date: 9/20/2024
; Description: A program that asks for first, middle, and last name, then displays them together

.model small
.stack 100h
.data
citu db "Cebu Institute of Technology - University$"
seu db "STUDENT ENROLLMENT FORM$"
pefi db "Please enter the following information:$"

i_id db "Student ID  Number: $"
i_fn db "Student ID  Number: $"
i_mn db "Student ID  Number: $"
i_ln db "Student ID  Number: $"
i_add db "Student ID  Number: $"
i_course db "Student ID  Number: $"
i_year db "Student ID  Number: $"
i_bdaym db "Student ID  Number: $"
i_bdayd db "Student ID  Number: $"
i_bdayy db "Student ID  Number: $"
i_email db "Student ID  Number: $"

summary db "SUMMARY$"
please_check db "Please check if all information are correct.$"

o_id db "ID Number: $"
o_fullName db "ID Number: $"
o_address db "ID Number: $"
o_cy db "ID Number: $"
o_bday db "ID Number: $"
o_email db "ID Number: $"
.code
start:


    call ENDPROGRAM
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