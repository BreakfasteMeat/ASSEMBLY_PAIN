
.model small

.stack 100
.data
try db"MULTIPLICATION TABLE$"
FILEHEADER1 db 'Filename: Exam1.asm',13,10,'Programmer Name: Seth Nathaniel G. Emia',13,10,'$'
FILEHEADER2 db 'Program Description: Displays the multiplication table by',13,10,'$'
FILEHEADER3 db '                     printing each character individually',13,10,'$'
FILEHEADER4 db 'Date Created:  September 6, 2024',13,10,10,10,10,'$'
.code
start:
    ;---CLEAR SCREEN BY CHANGING VIDEO MODE
	
    mov al, 13h 
    mov ah, 0 
    int 10h
    
    mov al, 03h 
    mov ah, 0 
    int 10h
	mov ax,1112h
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

	lea dx,try
	mov ah,09h
	int 21h


	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,09h 
	mov bl,4Fh; 4-red background F-white foreground 
	mov cx,33 ;number of characters
	int 10h	
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,58h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,33h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,35h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,36h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,37h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,38h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,39h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------firstrow
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,09h 
	mov bl,4Fh; 4-red background F-white foreground 
	mov cx,3 ;number of characters
	int 10h	
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,33h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,35h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,36h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,37h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,38h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,39h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
		;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
;
	mov ah,09h 
	mov bl,4Fh; 4-red background F-white foreground 
	mov cx,3 ;number of characters
	int 10h	

	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,36h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,38h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,36h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,38h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
			;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	;
	mov ah,09h 
	mov bl,4Fh; 4-red background F-white foreground 
	mov cx,3 ;number of characters
	int 10h	
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,33h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,33h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,36h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,39h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,35h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,38h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,37h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,33h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
			;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,09h 
	mov bl,4Fh; 4-red background F-white foreground 
	mov cx,3 ;number of characters
	int 10h	
;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,38h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,36h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,38h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,33h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,33h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,36h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
		;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
;
	mov ah,09h 
	mov bl,4Fh; 4-red background F-white foreground 
	mov cx,3 ;number of characters
	int 10h	

	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,35h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,35h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,35h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,35h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,33h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,33h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,35h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,35h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,35h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

		;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
;
	mov ah,09h 
	mov bl,4Fh; 4-red background F-white foreground 
	mov cx,3 ;number of characters
	int 10h	

	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,36h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,36h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,38h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,33h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,33h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,36h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,38h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,35h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,36h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
		;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
;
	mov ah,09h 
	mov bl,4Fh; 4-red background F-white foreground 
	mov cx,3 ;number of characters
	int 10h	

	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,37h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,37h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,38h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,33h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,35h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,39h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,35h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,36h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,36h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,33h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,37h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
		;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
;
	mov ah,09h 
	mov bl,4Fh; 4-red background F-white foreground 
	mov cx,3 ;number of characters
	int 10h	

	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,38h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,38h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,36h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,33h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,38h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,35h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,36h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,36h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,37h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,38h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

		;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
;
	mov ah,09h 
	mov bl,4Fh; 4-red background F-white foreground 
	mov cx,3 ;number of characters
	int 10h	
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,39h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,39h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,38h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,37h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,36h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,35h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,35h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,36h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,33h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,37h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,38h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,20h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,39h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
		;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	mov ah,02h ; prepare display
	mov cl,2Dh ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
	mov ah,02h ; prepare display
	mov cl,0Ah ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;------------------------------------------
;
	mov ah,09h 
	mov bl,4Fh; 4-red background F-white foreground 
	mov cx,3 ;number of characters
	int 10h	
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,32h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display

	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,33h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,34h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,35h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,36h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,37h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,38h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,39h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display


	mov ah,02h ; prepare display
	mov cl,7Ch ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,31h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	;
	mov ah,02h ; prepare display
	mov cl,30h ; 41h is capital A
	mov dl,cl ; move anything from cl to dl
	int 21h ; instruction to display
	jmp ENDPROGAM


 
printString:
    mov ah, 09h
    int 21h
    ret

ENDPROGAM:

int 27h ; terminate aka INTerrupt
end start ; end program