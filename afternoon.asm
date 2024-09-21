.model small
.stack 200h
.data
FactorialValue DW ?
Factorial DW ?

.code
start:
FiveFactorial PROC
    mov ax,@data
    mov ds,ax
    mov [FactorialValue],1
    mov [Factorial],2
    mov cx,4
FiveFactorialLoop:
    mov ax,[FactorialValue]
    mul [Factorial]
    mov [FactorialValue],ax
    inc [Factorial]
    loop FiveFactorialLoop
    ret
FiveFactorial endp
int 21h
end start