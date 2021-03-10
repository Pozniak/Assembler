%include "syscall.mac"
section .data
   userMsg db 'Введите строку: ' 
   lenUserMsg equ $-userMsg 
   dispMsg db 'Ваша строка: '
   lenDispMsg equ $-dispMsg                 
section .bss
   textlen equ 0FFFFh
   text resb textlen
section .text
   global _start
_start:
   WRITE userMsg, lenUserMsg
   READ text, textlen
   WRITE dispMsg, lenDispMsg
   WRITE text, textlen
   EXIT