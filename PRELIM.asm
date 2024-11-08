; FILENAME: PRELIM.ASM
; CS243 Lab Prelim Exam First Semester SY 2024-2025
; Student Name: Seth Nathaniel G. Emia
; Date Finished September 13, 2024
.model small

.stack 100
.data
space2 db           "  $"
space10 db           "          $"
citu db             "               Cebu Institute of Technology - University               $"
vehicle db          "                    VEHICLE STICKER APPLICATION FORM                   $"
pfff db             "                       Please fill out form below.                     $"
white db            "                                                                            $"
copyright db        "                Copyright 2024 Seth Nathaniel Galacio Emia                 $"
thankyou db         "                                  Thank You!$"

subleft db          "                                $"
subright db         "                                 $"
submit db           "  SUBMIT  $"

v db                " V $"
fspdd db            "________$"
fsp  db             "___________$"

fl1 db              "Personnel Type:           $"
fl2 db              "Name of Applicant/Driver: $"
fl3 db              "Mobile Number:            $"
fl4 db              "Vehicle Make(s)/Brand:    $"
fl5 db              "Vehicle Color:            $"

fr1 db              "Vehicle Sticker Type: $"
fr2 db              "ID Number:            $"
fr3 db              "Address:              $"
fr4 db              "Plate Number:         $"
fr5 db              "Vehicle Type:         $"


.code
start:


    mov ax,@data
    mov ds,ax

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h
    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h
;----CITU row
    
    lea dx,space2
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,2 ; number of spaces 
	int 10h	

    lea dx,space2
	mov ah,09
	int 21h
    
    mov ah,09h 
	mov bl,47h ; CHANGE COLOR 
	mov cx,72 ; number of spaces 
	int 10h	
    
    lea dx,citu
	mov ah,09
	int 21h
    
    mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,2 ; number of spaces
    int 10h
    
    lea dx,space2
	mov ah,09
	int 21h
    
    lea dx,space2
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h
;---VEHICLE ROW
    lea dx,space2
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,2 ; number of spaces 
	int 10h	

    lea dx,space2
	mov ah,09
	int 21h
    
    mov ah,09h 
	mov bl,47h ; CHANGE COLOR 
	mov cx,72 ; number of spaces 
	int 10h	
    
    lea dx,vehicle
	mov ah,09
	int 21h
    
    mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,2 ; number of spaces
    int 10h
    
    lea dx,space2
	mov ah,09
	int 21h
    
    lea dx,space2
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h
;---PLES FILL FORM BELOW
    lea dx,space2
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,2 ; number of spaces 
	int 10h	

    lea dx,space2
	mov ah,09
	int 21h
    
    mov ah,09h 
	mov bl,0CEh ; CHANGE COLOR 
	mov cx,72 ; number of spaces 
	int 10h	
    
    lea dx,pfff
	mov ah,09
	int 21h
    
    mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,2 ; number of spaces
    int 10h
    
    lea dx,space2
	mov ah,09
	int 21h
    
    lea dx,space2
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h

;---whiteLine
    lea dx,space2
	mov ah,09
	int 21h

    mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,75 ; number of spaces 
	int 10h	
    
    lea dx,white
	mov ah,09
	int 21h


    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h
;----FORM ROW 1
    lea dx,space2
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,28 ; number of spaces 
	int 10h	

    lea dx,space2
	mov ah,09
	int 21h

    lea dx,fl1
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,27h ; CHANGE COLOR 
	mov cx,9 ; number of spaces 
	int 10h

    lea dx,fspdd
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,47h ; CHANGE COLOR 
	mov cx,3 ; number of spaces 
	int 10h

    lea dx,v
	mov ah,09
	int 21h



	mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,24 ; number of spaces 
	int 10h	

	mov ah,02h ;
	mov cl,' ' ;
	mov dl,cl ;
	int 21h ; 

    lea dx,fr1
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,27h ; CHANGE COLOR 
	mov cx,9 ; number of spaces 
	int 10h

    lea dx,fspdd
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,47h ; CHANGE COLOR 
	mov cx,3 ; number of spaces 
	int 10h

    lea dx,v
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,2 ; number of spaces 
	int 10h	

    lea dx,space2
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h

;---whiteLine
    lea dx,space2
	mov ah,09
	int 21h

    mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,75 ; number of spaces 
	int 10h	
    
    lea dx,white
	mov ah,09
	int 21h


    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h


;----FORM ROW 2
    lea dx,space2
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,28 ; number of spaces 
	int 10h	

    lea dx,space2
	mov ah,09
	int 21h

    lea dx,fl2
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,27h ; CHANGE COLOR 
	mov cx,12 ; number of spaces 
	int 10h

    lea dx,fsp
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,24 ; number of spaces 
	int 10h	

	mov ah,02h ;
	mov cl,' ' ;
	mov dl,cl ;
	int 21h ; 

    lea dx,fr2
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,27h ; CHANGE COLOR 
	mov cx,12 ; number of spaces 
	int 10h

    lea dx,fsp
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,2 ; number of spaces 
	int 10h	

    lea dx,space2
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h

;---whiteLine
    lea dx,space2
	mov ah,09
	int 21h

    mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,75 ; number of spaces 
	int 10h	
    
    lea dx,white
	mov ah,09
	int 21h


    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h


;----FORM ROW 3
    lea dx,space2
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,28 ; number of spaces 
	int 10h	

    lea dx,space2
	mov ah,09
	int 21h

    lea dx,fl3
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,27h ; CHANGE COLOR 
	mov cx,12 ; number of spaces 
	int 10h

    lea dx,fsp
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,24 ; number of spaces 
	int 10h	

	mov ah,02h ;
	mov cl,' ' ;
	mov dl,cl ;
	int 21h ; 

    lea dx,fr3
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,27h ; CHANGE COLOR 
	mov cx,12 ; number of spaces 
	int 10h

    lea dx,fsp
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,2 ; number of spaces 
	int 10h	

    lea dx,space2
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h
;---whiteLine
    lea dx,space2
	mov ah,09
	int 21h

    mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,75 ; number of spaces 
	int 10h	
    
    lea dx,white
	mov ah,09
	int 21h


    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h


;----FORM ROW 4
    lea dx,space2
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,28 ; number of spaces 
	int 10h	

    lea dx,space2
	mov ah,09
	int 21h

    lea dx,fl4
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,27h ; CHANGE COLOR 
	mov cx,12 ; number of spaces 
	int 10h

    lea dx,fsp
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,24 ; number of spaces 
	int 10h	

	mov ah,02h ;
	mov cl,' ' ;
	mov dl,cl ;
	int 21h ; 

    lea dx,fr4
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,27h ; CHANGE COLOR 
	mov cx,12 ; number of spaces 
	int 10h

    lea dx,fsp
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,2 ; number of spaces 
	int 10h	

    lea dx,space2
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h
;---whiteLine
    lea dx,space2
	mov ah,09
	int 21h

    mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,75 ; number of spaces 
	int 10h	
    
    lea dx,white
	mov ah,09
	int 21h


    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h

;----FORM ROW 5
    lea dx,space2
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,28 ; number of spaces 
	int 10h	

    lea dx,space2
	mov ah,09
	int 21h

    lea dx,fl5
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,27h ; CHANGE COLOR 
	mov cx,9 ; number of spaces 
	int 10h

    lea dx,fspdd
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,47h ; CHANGE COLOR 
	mov cx,3 ; number of spaces 
	int 10h

    lea dx,v
	mov ah,09
	int 21h



	mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,24 ; number of spaces 
	int 10h	

	mov ah,02h ;
	mov cl,' ' ;
	mov dl,cl ;
	int 21h ; 

    lea dx,fr5
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,27h ; CHANGE COLOR 
	mov cx,9 ; number of spaces 
	int 10h

    lea dx,fspdd
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,47h ; CHANGE COLOR 
	mov cx,3 ; number of spaces 
	int 10h

    lea dx,v
	mov ah,09
	int 21h

	mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,2 ; number of spaces 
	int 10h	

    lea dx,space2
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h

;---whiteLine

    lea dx,space2
	mov ah,09
	int 21h

    mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,75 ; number of spaces 
	int 10h	
    
    lea dx,white
	mov ah,09
	int 21h


    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h
;----SUBMIT ROW
    
    lea dx,space2
	mov ah,09
	int 21h

    mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,32 ; number of spaces 
	int 10h	

    lea dx,subleft
	mov ah,09
	int 21h

    mov ah,09h 
	mov bl,4Eh ; CHANGE COLOR 
	mov cx,10 ; number of spaces 
	int 10h	

    lea dx,submit
	mov ah,09
	int 21h

    mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,33 ; number of spaces 
	int 10h

    lea dx,subright
	mov ah,09
	int 21h

    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h

;---whiteLine

    lea dx,space2
	mov ah,09
	int 21h

    mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,75 ; number of spaces 
	int 10h	
    
    lea dx,white
	mov ah,09
	int 21h


    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h

;---Copyright

    lea dx,space2
	mov ah,09
	int 21h

    mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,75 ; number of spaces 
	int 10h	
    
    lea dx,copyright
	mov ah,09
	int 21h


    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h

;---whiteLine

    lea dx,space2
	mov ah,09
	int 21h

    mov ah,09h 
	mov bl,70h ; CHANGE COLOR 
	mov cx,75 ; number of spaces 
	int 10h	
    
    lea dx,white
	mov ah,09
	int 21h


    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h

;---blackLine

    lea dx,space2
	mov ah,09
	int 21h

    mov ah,09h 
	mov bl,00h ; CHANGE COLOR 
	mov cx,75 ; number of spaces 
	int 10h	
    
    lea dx,white
	mov ah,09
	int 21h


    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h

;--THANK YOU
    mov ah,09h 
	mov bl,8Eh ; CHANGE COLOR 
	mov cx,44 ; number of spaces 
	int 10h	
    
    lea dx,thankyou
	mov ah,09
	int 21h


    mov ah,02h 
	mov cl,0Ah;NEW LINE 
	mov dl,cl 
    int 21h
int 27h ; terminate aka INTerrupt
end start ; end program