.model small
.stack 100h
.data


short_space db "    $"
long_space db "            $"
cit db "Cebu Institute of Technology - University$"
veh db "     VEHICLE STICKER APPLICATION FORM    $"
pff db "       Please fill out form below.       $"
line db "                                                                         $" ; 73 width
copyright db "                   Copyright 2024 Seth Nathaniel G. Emia                 $" ; 73 width
ty db "                                    Thank You!                                $" ;


v db " V $"
fsp db "         $"
fspa db "      $"
fl1 db "    Personnel Type:          $"
fl2 db "    Name of Applicant/Driver:$"
fl3 db "    Mobile Number:           $"
fl4 db "    Vehicle Make(s)/Brand:   $"
fl5 db "    Vehicle Color:           $"

csp db "         $"
cspa db "      $"
cl1 db " Vehicle Sticker Type:$"
cl2 db " ID Number:           $"
cl3 db " Address:             $"
cl4 db " Plate Number:        $"
cl5 db " Vehicle Type:        $"

submit db "  SUBMIT  $"
submitleft db "                                $"
submitright db "                               $"
.code
start:
    mov ax, @data
    mov ds,ax

   


    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
;----------------------------------------
    mov dx, offset short_space
    mov ah, 09h
    int 21h  

    mov ah,09h
	mov bl,77h ; White
	mov cx, 4;
	int 10h

    mov dx, offset short_space
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,47h ; Red
	mov cx, 65;
	int 10h
    
    mov dx, offset long_space
    mov ah, 09h
    int 21h

    mov dx, offset cit
    mov ah, 09h
    int 21h

    mov dx, offset long_space
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,77h ; White
	mov cx, 4;
	int 10h

    mov dx, offset short_space
    mov ah, 09h
    int 21h

    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
;-----------------------------------------------
;----------------------------------------
    mov dx, offset short_space
    mov ah, 09h
    int 21h  

    mov ah,09h
	mov bl,77h ; White
	mov cx, 4;
	int 10h

    mov dx, offset short_space
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,47h ; Red
	mov cx, 65;
	int 10h
    
    mov dx, offset long_space
    mov ah, 09h
    int 21h

    mov dx, offset veh
    mov ah, 09h
    int 21h

    mov dx, offset long_space
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,77h ; White
	mov cx, 4;
	int 10h

    mov dx, offset short_space
    mov ah, 09h
    int 21h

    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
;-----------------------------------------------
;----------------------------------------
    mov dx, offset short_space
    mov ah, 09h
    int 21h  

    mov ah,09h
	mov bl,77h ; White
	mov cx, 4;
	int 10h

    mov dx, offset short_space
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,0CEh ; Red
	mov cx, 65;
	int 10h
    
    mov dx, offset long_space
    mov ah, 09h
    int 21h

    mov dx, offset pff
    mov ah, 09h
    int 21h

    mov dx, offset long_space
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,77h ; White
	mov cx, 4;
	int 10h

    mov dx, offset short_space
    mov ah, 09h
    int 21h

    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
;-----------------------------------------------
    mov dx, offset short_space
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,76h ; White
	mov cx, 73;
	int 10h
    
    mov dx, offset line
    mov ah, 09h
    int 21h

    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
;-----------------------------------------------
    mov dx, offset short_space
    mov ah, 09h
    int 21h
    
    mov ah,09h
	mov bl,70h ; White
	mov cx, 29;
	int 10h
    
    mov dx, offset fl1
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,11h ; form Box
	mov cx, 9;
	int 10h
    
    mov dx, offset fspa
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,47h ; Red
	mov cx, 3;
	int 10h

    mov dx, offset V
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,70h ; White
	mov cx, 24;
	int 10h
        
    
    mov dx, offset cl1
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,11h ; form box
	mov cx, 07;
	int 10h
    
    mov dx, offset cspa
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,47h ; Red
	mov cx, 3;
	int 10h

    mov dx, offset V
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,70h ; White
	mov cx, 4;
	int 10h

    mov dx, offset short_space
    mov ah, 09h
    int 21h
    

    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
;-----------------------------------------------
    mov dx, offset short_space
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,76h ; White
	mov cx, 73;
	int 10h
    
    mov dx, offset line
    mov ah, 09h
    int 21h

    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
;-----------------------------------------------
    mov dx, offset short_space
    mov ah, 09h
    int 21h
    
    mov ah,09h
	mov bl,70h ; White
	mov cx, 29;
	int 10h
    
    mov dx, offset fl2
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,11h ; form Box
	mov cx, 10;
	int 10h
    
    mov dx, offset fsp
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,70h ; White
	mov cx, 26;
	int 10h
    
    mov dx, offset cl2
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,11h ; form box
	mov cx, 09;
	int 10h

    mov dx, offset fsp
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,70h ; White
	mov cx, 4;
	int 10h

    mov dx, offset short_space
    mov ah, 09h
    int 21h

    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
;-------------------------------------
;-----------------------------------------------
    mov dx, offset short_space
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,76h ; White
	mov cx, 73;
	int 10h
    
    mov dx, offset line
    mov ah, 09h
    int 21h

    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
;-----------------------------------------------
    mov dx, offset short_space
    mov ah, 09h
    int 21h
    
    mov ah,09h
	mov bl,70h ; White
	mov cx, 29;
	int 10h
    
    mov dx, offset fl3
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,11h ; form Box
	mov cx, 10;
	int 10h
    
    mov dx, offset fsp
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,70h ; White
	mov cx, 26;
	int 10h
    
    mov dx, offset cl3
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,11h ; form box
	mov cx, 09;
	int 10h

    mov dx, offset fsp
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,70h ; White
	mov cx, 4;
	int 10h

    mov dx, offset short_space
    mov ah, 09h
    int 21h

    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
;-------------------------------------
;-----------------------------------------------
    mov dx, offset short_space
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,76h ; White
	mov cx, 73;
	int 10h
    
    mov dx, offset line
    mov ah, 09h
    int 21h

    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
;-----------------------------------------------
    mov dx, offset short_space
    mov ah, 09h
    int 21h
    
    mov ah,09h
	mov bl,70h ; White
	mov cx, 29;
	int 10h
    
    mov dx, offset fl4
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,11h ; form Box
	mov cx, 10;
	int 10h
    
    mov dx, offset fsp
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,70h ; White
	mov cx, 26;
	int 10h
    
    mov dx, offset cl4
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,11h ; form box
	mov cx, 09;
	int 10h

    mov dx, offset fsp
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,70h ; White
	mov cx, 4;
	int 10h

    mov dx, offset short_space
    mov ah, 09h
    int 21h

    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
;-------------------------------------
;-----------------------------------------------
    mov dx, offset short_space
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,76h ; White
	mov cx, 73;
	int 10h
    
    mov dx, offset line
    mov ah, 09h
    int 21h

    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
;-----------------------------------------------
    mov dx, offset short_space
    mov ah, 09h
    int 21h
    
    mov ah,09h
	mov bl,70h ; White
	mov cx, 29;
	int 10h
    
    mov dx, offset fl5
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,11h ; form Box
	mov cx, 9;
	int 10h
    
    mov dx, offset fspa
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,47h ; Red
	mov cx, 3;
	int 10h

    mov dx, offset V
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,70h ; White
	mov cx, 24;
	int 10h
        
    
    mov dx, offset cl5
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,11h ; form box
	mov cx, 07;
	int 10h
    
    mov dx, offset cspa
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,47h ; Red
	mov cx, 3;
	int 10h

    mov dx, offset V
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,70h ; White
	mov cx, 4;
	int 10h

    mov dx, offset short_space
    mov ah, 09h
    int 21h
    

    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
;-----------------------------------------------
;-----------------------------------------------
    mov dx, offset short_space
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,76h ; White
	mov cx, 73;
	int 10h
    
    mov dx, offset line
    mov ah, 09h
    int 21h

    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
;-----------------------------------------------
;------------------------------------------------
    mov dx, offset short_space
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,76h ; White
	mov cx, 32;
	int 10h
    
    mov dx, offset submitleft
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,0CEh ; Red Blinking
	mov cx, 32;
	int 10h
    
    mov dx, offset submit
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,76h ; White
	mov cx, 31;
	int 10h
    
    mov dx, offset submitright
    mov ah, 09h
    int 21h

    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
;-------------------------------------
;-----------------------------------------------
    mov dx, offset short_space
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,76h ; White
	mov cx, 73;
	int 10h
    
    mov dx, offset line
    mov ah, 09h
    int 21h

    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
;-----------------------------------------------
;-----------------------------------------------
    mov dx, offset short_space
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,70h ; White
	mov cx, 73;
	int 10h
    
    mov dx, offset copyright
    mov ah, 09h
    int 21h

    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
;-----------------------------------------------
;-----------------------------------------------
    mov dx, offset short_space
    mov ah, 09h
    int 21h

    mov ah,09h
	mov bl,76h ; White
	mov cx, 73;
	int 10h
    
    mov dx, offset line
    mov ah, 09h
    int 21h

    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
;-----------------------------------------------
    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
    
    mov ah,09h
	mov bl,8Eh ; White
	mov cx, 73;
	int 10h

    mov dx, offset ty
    mov ah, 09h
    int 21h
    mov ah,02h
    mov dl,0Ah ; NEW LINE
    int 21h
int 27h
end start
