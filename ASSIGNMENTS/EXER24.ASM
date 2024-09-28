; Filename: Exer24.asm
; Programmer Name: Seth Nathaniel G. Emia
; Date: 9/22/2024
; Description: This program will ask the user some inputs and displays them in a form format

.model small
.stack 100
.data
MAX_STR_LEN EQU 1000
prompt_personnel db "Enter Personnel Type: $"
prompt_sticker db "Enter Vehicle Sticker Type: $"
prompt_driver db "Enter Name of Applicant/Driver: $"
prompt_id db "Enter ID Number: $"
prompt_number db "Enter Mobile Number: $"
prompt_addr db "Enter Address: $"
prompt_brand db "Enter Vehicle Make(s)/Brand: $"
prompt_plate db "Enter Plate Number: $"
prompt_color db "Enter Vehicle Color: $"
prompt_type db "Enter Vehicle Type: $"


blank db "                                                                        $"
header_1  db "                Cebu Institute of Technology - University                 $"
header_2  db "                     VEHICLE STICKER APPLICATION FORM                     $"
header_3  db "                        Please fill out form below.                       $"


outBox1_L  db "Personnel Type:           $"
outBox2_L  db "Name of Applicant/Driver: $"
outBox3_L  db "Mobile Number:            $"
outBox4_L  db "Vehicle Make(s)/Brand:    $"
outBox5_L  db "Vehicle Color:            $"


outBox1_R  db "Vehicle Sticker Type: $"
outBox2_R  db "ID Number:            $"
outBox3_R  db "Address:              $"
outBox4_R  db "Plate Number:         $"
outBox5_R  db "Vehicle Type:         $"

blank_2 db "                                 $"
submit db "  SUBMIT  $"
blank_3 db "                          $"

end1 db "                    Copyright 2024 SETH NATHANIEL GALACIO EMIA            $"
end2 db "                                   Thank you!$"

i_personnel DB 50,0,15 DUP(' ')
i_sticker DB 50,0,15 DUP(' ')
i_driver DB 50,0,15 DUP(' ')
i_id DB 50,0,15 DUP(' ')
i_number DB 50,0,15 DUP(' ')
i_address DB 50,0,15 DUP(' ')
i_brand DB 50,0,15 DUP(' ')
i_plate DB 50,0,15 DUP(' ')
i_color DB 50,0,15 DUP(' ')
i_type DB 50,0,15 DUP(' ')

.code

start:

	mov ax, @data
	mov ds, ax

    mov dx,offset prompt_personnel
    mov ah,9
    int 21h
 
    lea DX, i_personnel
    mov AH, 0Ah               
    int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov dx,offset prompt_sticker
    mov ah,9
    int 21h
 
    lea DX, i_sticker
    mov AH, 0Ah               
    int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov dx,offset prompt_driver
    mov ah,9
    int 21h
 
    lea DX, i_driver
    mov AH, 0Ah               
    int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov dx,offset prompt_id
    mov ah,9
    int 21h
 
    lea DX, i_id
    mov AH, 0Ah               
    int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov dx,offset prompt_number
    mov ah,9
    int 21h
 
    lea DX, i_number
    mov AH, 0Ah               
    int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov dx,offset prompt_addr
    mov ah,9
    int 21h
 
    lea DX, i_address
    mov AH, 0Ah               
    int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov dx,offset prompt_brand
    mov ah,9
    int 21h
 
    lea DX, i_brand
    mov AH, 0Ah               
    int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov dx,offset prompt_plate
    mov ah,9
    int 21h
 
    lea DX, i_plate
    mov AH, 0Ah               
    int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov dx,offset prompt_color
    mov ah,9
    int 21h
 
    lea DX, i_color
    mov AH, 0Ah               
    int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov dx,offset prompt_type
    mov ah,9
    int 21h
 
    lea DX, i_type
    mov AH, 0Ah               
    int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

	mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

	mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

	mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h
    
	mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

mov ah, 09h
mov bl, 0FFh
mov cx, 1                                
int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 4Fh
	mov cx, 74                              
	int 10h

	lea dx, header_1
	mov ah, 09
	int 21h

	mov ah, 09h
	mov bl, 0FFh
	mov cx, 1                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 0FFh
	mov cx, 1                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 4Fh
	mov cx, 74                              
	int 10h

	lea dx, header_2
	mov ah, 09
	int 21h

	mov ah, 09h
	mov bl, 0FFh
	mov cx, 1                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 0FFh
	mov cx, 1                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 0CEh
	mov cx, 74                              
	int 10h

	lea dx, header_3
	mov ah, 09
	int 21h

	mov ah, 09h
	mov bl, 0FFh
	mov cx, 1                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 0FFh
	mov cx, 76                                
	int 10h

	lea dx, blank
	mov ah, 09
	int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 70h
	mov cx, 28                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    lea dx, outBox1_L
	mov ah, 09
	int 21h

	mov ah, 09h
	mov bl, 20h
	mov cx, 10                                
	int 10h

    xor bx, bx
    mov bl, i_personnel[1]
    mov i_personnel[bx+2], '$'
    mov dx, offset i_personnel + 2
    mov ah, 9
    int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 4Fh
	mov cx, 3                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, 'V' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 70h
	mov cx, 25                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    lea dx, outBox1_R
	mov ah, 09
	int 21h

	mov ah, 09h
	mov bl, 20h
	mov cx, 9                                
	int 10h

    xor bx, bx
    mov bl, i_sticker[1]
    mov i_sticker[bx+2], '$'
    mov dx, offset i_sticker + 2
    mov ah, 9
    int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 4Fh
	mov cx, 3                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, 'V' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 70h
	mov cx, 1                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 0FFh
	mov cx, 76                                
	int 10h

	lea dx, blank
	mov ah, 09
	int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 70h
	mov cx, 27                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    lea dx, outBox2_L
	mov ah, 09
	int 21h

	mov ah, 09h
	mov bl, 20h
	mov cx, 13                                
	int 10h

    xor bx, bx
    mov bl, i_driver[1]
    mov i_driver[bx+2], '$'
    mov dx, offset i_driver + 2
    mov ah, 9
    int 21h

	mov ah, 09h
	mov bl, 70h
	mov cx, 25                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    lea dx, outBox2_R
	mov ah, 09
	int 21h

	mov ah, 09h
	mov bl, 20h
	mov cx, 12                                
	int 10h

    xor bx, bx
    mov bl, i_id[1]
    mov i_id[bx+2], '$'
    mov dx, offset i_id + 2
    mov ah, 9
    int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 70h
	mov cx, 1                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 0FFh
	mov cx, 76                                
	int 10h

	lea dx, blank
	mov ah, 09
	int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 70h
	mov cx, 27                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    lea dx, outBox3_L
	mov ah, 09
	int 21h

	mov ah, 09h
	mov bl, 20h
	mov cx, 13                                
	int 10h

    xor bx, bx
    mov bl, i_number[1]
    mov i_number[bx+2], '$'
    mov dx, offset i_number + 2
    mov ah, 9
    int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 70h
	mov cx, 25                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    lea dx, outBox3_R
	mov ah, 09
	int 21h

	mov ah, 09h
	mov bl, 20h
	mov cx, 12                                
	int 10h

    xor bx, bx
    mov bl, i_address[1]
    mov i_address[bx+2], '$'
    mov dx, offset i_address + 2
    mov ah, 9
    int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 70h
	mov cx, 1                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 0FFh
	mov cx, 76                                
	int 10h

	lea dx, blank
	mov ah, 09
	int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 70h
	mov cx, 27                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    lea dx, outBox4_L
	mov ah, 09
	int 21h

	mov ah, 09h
	mov bl, 20h
	mov cx, 13                                
	int 10h

    xor bx, bx
    mov bl, i_brand[1]
    mov i_brand[bx+2], '$'
    mov dx, offset i_brand + 2
    mov ah, 9
    int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 70h
	mov cx, 25                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    lea dx, outBox4_R
	mov ah, 09
	int 21h

	mov ah, 09h
	mov bl, 20h
	mov cx, 12                                
	int 10h

    xor bx, bx
    mov bl, i_plate[1]
    mov i_plate[bx+2], '$'
    mov dx, offset i_plate + 2
    mov ah, 9
    int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 70h
	mov cx, 1                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 0FFh
	mov cx, 76                                
	int 10h

	lea dx, blank
	mov ah, 09
	int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 70h
	mov cx, 27                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    lea dx, outBox5_L
	mov ah, 09
	int 21h

	mov ah, 09h
	mov bl, 20h
	mov cx, 11                                
	int 10h

    xor bx, bx
    mov bl, i_color[1]
    mov i_color[bx+2], '$'
    mov dx, offset i_color + 2
    mov ah, 9
    int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 4Fh
	mov cx, 3                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, 'V' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 70h
	mov cx, 25                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    lea dx, outBox5_R
	mov ah, 09
	int 21h

	mov ah, 09h
	mov bl, 20h
	mov cx, 8                                
	int 10h

    xor bx, bx
    mov bl, i_type[1]
    mov i_type[bx+2], '$'
    mov dx, offset i_type + 2
    mov ah, 9
    int 21h

	mov ah, 09h
	mov bl, 4Fh
	mov cx, 3                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, 'V' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 70h
	mov cx, 1                                
	int 10h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 0FFh
	mov cx, 76                                
	int 10h

	lea dx, blank
	mov ah, 09
	int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 0FFh
	mov cx, 33                                
	int 10h

	lea dx, blank_2
	mov ah, 09
	int 21h

	mov ah, 09h
	mov bl, 4Eh
	mov cx, 10                              
	int 10h

	lea dx, submit
	mov ah, 09
	int 21h

	mov ah, 09h
	mov bl, 0FFh
	mov cx, 33                                
	int 10h

	lea dx, blank_3
	mov ah, 09
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 0FFh
	mov cx, 76                                
	int 10h

	lea dx, blank
	mov ah, 09
	int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 70h
	mov cx, 76                                
	int 10h

	lea dx, end1
	mov ah, 09
	int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, ' ' 
	mov dl, cl
	int 21h
    
	mov ah, 09h
	mov bl, 0FFh
	mov cx, 76                                
	int 10h

	lea dx, blank
	mov ah, 09
	int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

	mov ah, 09h
	mov bl, 8Eh
	mov cx, 45                                
	int 10h

	lea dx, end2
	mov ah, 09
	int 21h

    mov ah, 02h
	mov cl, 0Ah 
	mov dl, cl
	int 21h

int 27h

end start