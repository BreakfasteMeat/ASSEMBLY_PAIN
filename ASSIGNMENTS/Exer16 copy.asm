; Filename: EXER16.asm
; Programmer Name: Seth Nathaniel G. Emia
; Date: 9/20/2024
; Description: This assembly language program will get character input and
; determine if input is 'y' or 'Y' to display good morning message
; else display good afternoon message

.model small
.stack 100h
.data
    TimePrompt db 'Is it after 12 noon (Y/N)?$'
    GoodMorningMessage LABEL BYTE
        DB 13,10,'Good morning, world!',13,10,'$'

    
    GoodAfternoonMessage LABEL BYTE
        DB 13,10,'Good afternoon, world!',13,10,'$'
.code
ProgramStart:
    mov ax,@data
    mov ds,ax                               ;   set DS to point to data segment
    mov dx, OFFSET TimePrompt               ;   point to the time prompt
    mov ah,9                                ;   DOS print string function
    int 21h                                 ;   display time prompt

    mov ah,1                                ;   DOS get character function
    int 21h                                 ;   get single character response

    cmp al,'y'                              ;   typed lowercase 'y' for afternoon?
    jz IsAfternoon                          ;   jz = jump if zero. Yes, it's afternoon
    cmp al,'Y'
    jnz IsMorning                           ;   no, it's before noon

IsAfternoon:
    mov dx,offset GoodAfternoonMessage      ;   point to the afternoon greeting
    jmp DisplayGreeting                     ;   jump to the DisplayGreeting section of the code

IsMorning:
    mov dx,offset GoodMorningMessage        ;   point to before noon greeting

DisplayGreeting:
    mov ah,9                                ;   DOS print string function
    int 21h                                 ;   display the greeting

    mov ah,4ch                              ;   DOS terminate program function
    int 21h                                 ;   terminate program
end ProgramStart