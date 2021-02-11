global _start
section .text
_start: ; точка входа в программу – всегда _start
mov rax, 1 ; номер функции, 1 - write
mov rdi, 1 ; номер файла, 1 - stdout
mov rsi, msg ; адрес строки для вывода
mov rdx, len ; длина выводимой строки
syscall ; системный вызов
mov rax, 60 ; номер функции, 60 - exit
mov rdi, 0 ; код завершения программы
syscall ; системный вызов
section .data
msg: ; метка -> адрес данных -> имя данных
DB "Hello, world!", 0xa ; байтовый массив, может содержать строки
DB "NASM assembler", 0xa
len EQU $ - msg ; именованная константа len равна длине строки
