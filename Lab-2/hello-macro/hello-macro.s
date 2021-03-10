%macro EXIT 0-1 0
mov rdi, %1 ; код завершения программы
mov rax, 60 ; номер функции exit
syscall
%endmacro
%macro WRITE 2-3 1
mov rdi, %3 ; файловый дескриптор
mov rsi, %1 ; адрес выводимых данных
mov rdx, %2 ; размер выводимых данных
mov rax, 1 ; номер функции write
syscall
%endmacro

SECTION .text
GLOBAL _start
_start: ; точка входа в программу – всегда _start
WRITE msg, len
EXIT
SECTION .data
msg:
DB "Hello, world!", 0xa
DB "NASM assembler", 0xa
len EQU $ - msg 