.model small

.data
FILEHEADER1 db 'Filename: Exer2.asm',13,10,'Programmer Name: Seth Nathaniel G. Emia',13,10,'$'
FILEHEADER2 db 'Program Description: Display full name, course and year, college department',13,10,'$'
FILEHEADER3 db '                     and college enrolled in',13,10,'$'
FILEHEADER4 db 'Date Created:  August 29, 2024',13,10,10,10,10,'$'
.stack 100
.code
start:
    ;---CLEAR SCREEN BY CHANGING VIDEO MODE
    mov al, 13h 
    mov ah, 0 
    int 10h
    
    mov al, 03h 
    mov ah, 0 
    int 10h
	
    mov ax,@data
    mov ds,ax

	lea dx, FILEHEADER1
	call printString
	
	lea dx, FILEHEADER2
	call printString

	lea dx, FILEHEADER3
	call printString

	lea dx, FILEHEADER4
	call printString

	mov ah,02h ;
	mov cl,53h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,65h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,74h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,68h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,4Eh ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,61h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,74h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,68h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,61h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,6Eh ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,69h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,65h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,6Ch ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,47h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,61h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,6Ch ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,61h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,63h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,69h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,6Fh ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,45h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,6Dh ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,69h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,61h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,0Ah ;
	mov dl,cl ;
	int 21h ; 
	;SETH NATHANIEL GALACIO EMIA

	mov ah,02h ;
	mov cl,42h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,61h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,63h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,68h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,65h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,6Ch ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,6Fh ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,72h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,6Fh ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,66h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,53h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,63h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,69h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,65h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,6Eh ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,63h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,65h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,69h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,6Eh ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,43h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,6Fh ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,6Dh ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,70h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,75h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,74h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,65h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,72h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,53h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,63h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,69h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,65h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,6Eh ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,63h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,65h ;
	mov dl,cl ;
	int 21h ;


	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,32h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,6Eh ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,64h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,59h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,65h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,61h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,72h ;
	mov dl,cl ;
	int 21h ;
	;BACHELOR OF SCIENCE IN COMPUTER SCIENCE 2ND YEAR

	mov ah,02h ;
	mov cl,0Ah ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,43h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,6Fh ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,6Ch ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,6Ch ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,65h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,67h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,65h ;
	mov dl,cl ;
	int 21h ;
	;COLLEGE

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;


	mov ah,02h ;
	mov cl,6Fh ;
	mov dl,cl ;
	int 21h ;
 
	mov ah,02h ;
	mov cl,66h ;
	mov dl,cl ;
	int 21h ;
	;OF
	
	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,43h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,6Fh ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,6Dh ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,70h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,75h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,74h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,65h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,72h ;
	mov dl,cl ;
	int 21h ; 
	;COMPUTER
	
	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;
    
	mov ah,02h ;
	mov cl,53h ;
	mov dl,cl ;
	int 21h ;
    
	mov ah,02h ;
	mov cl,74h ;
	mov dl,cl ;
	int 21h ;
    
	mov ah,02h ;
	mov cl,75h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,64h ;
	mov dl,cl ;
	int 21h ;
    
	mov ah,02h ;
	mov cl,69h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,65h ;
	mov dl,cl ;
	int 21h ;
    
	mov ah,02h ;
	mov cl,73h ;
	mov dl,cl ;
	int 21h ;STUDIES
	
	mov ah,02h ;
	mov cl,0Ah ;
	mov dl,cl ;
	int 21h ;


	mov ah,02h ;
	mov cl,43h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,65h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,62h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,75h ;
	mov dl,cl ;
	int 21h ;
	;CEBU
	

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;

	
	mov ah,02h ;
	mov cl,49h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,6Eh ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,73h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,74h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,69h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,74h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,75h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,74h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,65h ;
	mov dl,cl ;
	int 21h ;
	;INSTITUTE
	
	
	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;


	mov ah,02h ;
	mov cl,6Fh ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,66h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;


	mov ah,02h ;
	mov cl,54h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,65h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,63h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,68h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,6Eh ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,6Fh ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,6Ch ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,6Fh ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,67h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,79h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,2Dh ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,55h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,6Eh ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,69h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,76h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,65h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,72h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,73h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,69h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,74h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,79h ;
	mov dl,cl ;
	int 21h ;

	jmp ENDPROGAM


 
printString:
    mov ah, 09h
    int 21h
    ret

ENDPROGAM:

int 27h ; terminate aka INTerrupt
end start ; end program