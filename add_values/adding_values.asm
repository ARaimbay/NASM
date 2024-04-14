    global _main
    section .text

_main:
    mov rax, 0x02000004      ; system call for write
    mov rdi, 3
    mov rsi, 5
    add rdi, rsi
    syscall

    mov rax, 0x02000001      ; system call to exit
    syscall