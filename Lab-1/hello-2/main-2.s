.intel_syntax noprefix
.global _start
########################################################################
.section .text
_start:
mov rax,1
mov rdi,1
mov rsi, OFFSET FLAT: msg
mov rdx, OFFSET FLAT: len
syscall
movq rax, 60
movq rdi, 0
syscall
########################################################################
.section .data
msg:
.ascii "Hello, world!\n"
.ascii "Intel syntax, "
.ascii "GNU Assembler\n"
len = . - msg
