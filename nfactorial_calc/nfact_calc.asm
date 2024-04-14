    section .text
    global _main

_main:
    mov rdi, 5
    call factorial

    mov rdi, 1
    xor rsi, rsi
    int 0x80

factorial:
cmp rdi, 0
jne end_recursion

push rdi
call factorial

pop rsi
imul rdi, rsi

ret

end_recursion:
    mov rdi, 1
    ret