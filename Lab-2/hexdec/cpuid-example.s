%include "syscall.mac"
SECTION .text
GLOBAL _start
EXTERN num2decstr
EXTERN num2hexstr
_start:
mov eax, 1
cpuid ; return processor info in eax mov rdi, hexstr
mov rdi, hexstr
mov rcx, hexstr.len
mov rsi, digits
call num2hexstr
WRITE hexstr, hexstr.len+1
mov eax, 1
cpuid ; return processor info in eax
mov rdi, decstr
mov rcx, decstr.len
mov rsi, digits
call num2decstr
WRITE decstr, decstr.len+1
EXIT
SECTION .data
digits: db "0123456789ABCDEF"
align 4
hexstr: db "000000000"
.len: equ $ - hexstr
db 0xA
align 4
decstr: db "000000000"
.len: equ $ - decstr
db 0xA