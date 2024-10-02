.model small
.stack 100h
.data
    x1 db 20       ; Declare variable x1 with value 20 (column)
    y1 db 10       ; Declare variable y1 with value 10 (row)
.code
start:
    ; Initialize the data segment
    mov ax, @data
    mov ds, ax

    ; Set video mode 03h (80x25 text mode)
    mov ax, 03h
    int 10h

    ; Set cursor position using variables
    mov ah, 02h     ; Function to set cursor position
    mov bh, 00h     ; Page number (0)

    ; Load y1 (row) into DL
    mov al, y1      ; Move the content of y1 into AL
    mov dh, al      ; Move AL (which now contains y1) to DH

    ; Load x1 (column) into DL
    mov al, x1      ; Move the content of x1 into AL
    mov dl, al      ; Move AL (which now contains x1) to DL
    
    int 10h

    ; Write a character at the cursor position
    mov ah, 09h     ; Write character and attribute
    mov al, 'A'     ; Character 'A'
    mov bh, 00h     ; Page number (0)
    mov bl, 0Ch     ; Light red on black background
    mov cx, 1       ; Repeat count (write once)
    int 10h

    ; Terminate the program
    mov ah, 4Ch
    int 21h
end start
