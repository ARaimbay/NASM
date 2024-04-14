    global _main
    section .text

_main:
    push 3
    call factorial

factorial:
push rbp
push rsi
mov rbp, rsp
add rbp, 12
mov rsi, [rbp]

pop rsi
pop rbp
ret