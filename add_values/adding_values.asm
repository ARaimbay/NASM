bits 32
global _main

_main:
    mov rax, 3      
    add rdi, rax, 5
    mov rdx
    syscall
message:
    db add, 10
