
.model small

.stack 100
.data
empty db            "|                                                                             |$"

topbox db           "-------------------------------------------------------------------------------$"
reg_form db         "|                       UNIVERSITY REGISTRATION FORM                          |$"
uni_name db         "|                       CEBU INSTITUTE OF TECHNOLOGY                          |$"
full_name db        "|     Full Name          [                   ]   [                   ]        |$"
under_name db       "|                           First Name              Last Name                 |$"
st_add  db          "|     Address            [                                           ]        |$"
under_st_add db     "|                        Street Address                                       |$"
city_state db       "|                        [                   ]   [                   ]        |$"
under_city_state db "|                        City                    State/Province               |$"
bday db             "|     Birth Date         [        ]      [         ]     [           ]        |$"
under_bday db       "|                        Month           Day             Year                 |$"
gender db           "|     Gender             [ ] Male        [ ] Female      [ ]N/A               |$"
number db           "|     Student Number     [                                           ]        |$"
under_number db     "|                        Phone Number                                         |$"
email db            "|     Student Email      [                                           ]        |$"
under_email db      "|                        example@example.com                                  |$"
company db          "|     Company            [                                           ]        |$"
courses1 db         "|     Courses            [] English 101  [] English 102 [] Creative Writing 1 |$"
courses2 db         "|                        [] History 101  [] Sociology 1 [] Sociology 2        |$"
courses3 db         "|                        [] Math 101     [] Math 1022   [] Multimedia 1       |$"
signature1 db       "|                                                 __________________________  |$"
signature2 db       "|     Date:________                                        Signature          |$"


.code
start:
    mov ax,@data
    mov ds,ax

    lea dx,topbox
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h

	lea dx,reg_form
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h

    lea dx,uni_name
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h
    
    lea dx,empty
	mov ah,09
	int 21h

	mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h

    lea dx,full_name
	mov ah,09
	int 21h

	mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h 

	lea dx,under_name
	mov ah,09
	int 21h

	mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h

    lea dx,empty
	mov ah,09
	int 21h
	
    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h
    
	lea dx,st_add
	mov ah,09
	int 21h
	
    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h

    lea dx,under_st_add
	mov ah,09
	int 21h
	
    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h

    lea dx,city_state
	mov ah,09
	int 21h
    
    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h

    lea dx,under_city_state
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h

    lea dx,bday
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h

    lea dx,under_bday
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h

    lea dx,gender
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h

    lea dx,number
	mov ah,09
	int 21h
    
    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h

    lea dx,under_number
	mov ah,09
	int 21h
    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h

    lea dx,email
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h

    lea dx,under_email
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h

    lea dx,company
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h

    lea dx,courses1
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h

    lea dx,courses2
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h

    lea dx,courses3
	mov ah,09
	int 21h



    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h



    lea dx,signature1
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h

    lea dx,signature2
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
	int 21h

    lea dx,topbox
	mov ah,09
	int 21h
int 27h ; terminate aka INTerrupt
end start ; end program