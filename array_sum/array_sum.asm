    global _main
    extern _printf
    extern _gets

    section .text

_main:
    push rbp
    mov rbp, rsp
    sub rsp, 128

    lea rdi, [rbp + 112]
    call _gets

    mov rdi, format
    lea rsi, [rbp + 112]
    call _printf

    add rsp, 128
    pop rbp
    ret

    section .data
format: db "%d"
    db 10, 0