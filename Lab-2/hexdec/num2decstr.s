SECTION .text
GLOBAL num2decstr
num2decstr: mov rdx, 0
mov rbx, 10
div rbx
mov dl, [rsi + rdx]
mov [rdi+rcx-1], dl
loop num2decstr
ret