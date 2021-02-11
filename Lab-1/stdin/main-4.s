section .data
   userMsg db 'Введите строку: ' 
   lenUserMsg equ $-userMsg 
   dispMsg db 'Ваша строка: '
   lenDispMsg equ $-dispMsg                 
section .bss
   text resb 0FFFFh
section .text
   global _start
_start:
   mov eax, 4
   mov ebx, 1
   mov ecx, userMsg
   mov edx, lenUserMsg
   int 0x80
   mov eax, 3
   mov ebx, 2
   mov ecx, text  
   mov edx, 0FFFFh
   int 0x80
   mov eax, 4
   mov ebx, 1
   mov ecx, dispMsg
   mov edx, lenDispMsg
   int 0x80  
   mov eax, 4
   mov ebx, 1
   mov ecx, text
   mov edx, 0FFFFh
   int 0x80  
   mov eax, 1
   mov ebx, 0
   int 0x80