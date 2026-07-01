default rel
extern printf
global main

section .data
    ; msg db "default rel%cextern printf%c%csection .data%c%cmsg db %c%s%c"
    msg: db "hello, %s\n", 0
    str: db "world", 0

main:
    ; push rbp
    ; mov rbp, rsp
    ; lea rdi, [rel msg]
    ; lea rsi, [rel str]
    ; xor rax, rax
    ; call printf WRT ..plt
    mov rax, 60
    mov rdi, 0
    syscall