SECTION .text
GLOBAL num2hexstr
num2hexstr:
mov rdx, rax ; копия обрабатываемого числа
and rdx, 0xF ; обнуляем все, кроме младших 4 бит
mov dl, [rsi + rdx] ; для этих бит выбираем цифру из таблицы
mov [rdi+rcx-1], dl ; записываем цифру в конец строки
shr rax, 4 ; сдвигаем число на одну цифру вправо
loop num2hexstr ; повторяем, пока rcx>0
ret