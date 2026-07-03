%define S "%%define S %1$c%2$s%1$c%3$c%3$csection .data%3$c%4$cmsg db S, 0%3$c%3$csection .text%3$c%4$cglobal main%3$c%4$cextern printf%3$c%3$cmain:%3$c%4$cxor rax, rax%3$c%4$cpush rbp%3$c%4$cmov rdi, msg%3$c%4$cmov rsi, 34%3$c%4$cmov rdx, msg%3$c%4$cmov rcx, 10%3$c%4$cmov r8, 9%3$c%4$ccall printf%3$c%4$cpop rbp%3$c%4$cmov rax, 60%3$c%4$cmov rdi, 0%3$c%4$csyscall%3$c%4$cret%3$c"

section .data
    msg db S, 0

section .text
    global main
    extern printf

main:
    xor rax, rax
    push rbp
    mov rdi, msg
    mov rsi, 34
    mov rdx, msg
    mov rcx, 10
    mov r8, 9
    call printf
    pop rbp
    mov rax, 60
    mov rdi, 0
    syscall
    ret 