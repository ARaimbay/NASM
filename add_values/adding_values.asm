    global _main
    section .text
_main:
    mov rax, 3      
    add rdi, 5
    mov rax, 0x02000001
    syscall