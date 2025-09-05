; hello.asm
global _start

section .data
    msg db "Hello from x86-64 Linux!", 10
    len equ $ - msg

section .text
_start:
    ; write(1, msg, len)
    mov rax, 1        ; sys_write
    mov rdi, 1
    mov rsi, msg
    mov rdx, len
    syscall

    ; exit(0)
    mov rax, 60       ; sys_exit
    xor rdi, rdi
    syscall
