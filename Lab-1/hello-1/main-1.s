.global _start
#######################################################################
.section .text
_start: # точка входа в программу – всегда _start
#### подготовка данных для вызова системной функции linux
movq $1, %rax # функция write
movq $1, %rdi # вывод в stdout
movq $msg, %rsi # адрес строки для вывода
movq $len, %rdx # длина выводимой строки
syscall # системный вызов linux
movq $60, %rax # функция exit
movq $0, %rdi # код завершения программы
syscall # системный вызов linux
########################################################################
.section .data
msg: # константа (метка) msg — адрес строки
.ascii "Hello, world!\n" # ascii-строка как в Си и Си++
.ascii "AT&T syntax, " #
.ascii "GNU Assembler\n" #
len = . - msg # константа len равна длине строки
