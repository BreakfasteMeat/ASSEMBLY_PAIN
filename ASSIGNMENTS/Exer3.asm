.model small

.data
FILEHEADER1 db 'Filename: Exer3.asm',13,10,'Programmer Name: Seth Nathaniel G. Emia',13,10,'$'
FILEHEADER2 db 'Program Description: Display 20 unique / special symbols',13,10,'$'
FILEHEADER3 db '                     all separated by a space',13,10,'$'
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
	mov cl,21h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,22h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,23h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,24h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,25h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,26h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,27h
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,28h;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,29h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,2Ah ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,2Bh ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,2Ch ;
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
	mov cl,2Eh ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,2Fh ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,30h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,31h ;
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
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,33h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
	mov dl,cl ;
	int 21h ;

	mov ah,02h ;
	mov cl,34h ;
	mov dl,cl ;
	int 21h ; 

	mov ah,02h ;
	mov cl,20h ;
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