; Comment
%define C "; Comment%2$c%%define C %1$c%4$s%1$c"
%define FNAME "Grace_kid.s"
%macro real_main 0
section .data
    src db C, 0
    msg db "hello, world", 10, 0
    fname db FNAME, 0

section .text
    global main
    extern dprintf
    extern printf

main:
    xor rax, rax
    mov rax, 2
    mov rdi, fname
    mov rsi, 2 | 0100o 
    mov rdx, 0o644
    syscall
    push rbp
    mov rdi, C
    mov rsi, 34 ; double quotes
    mov rdx, 10 ; newline
    mov rcx, 9  ; tab
    mov r8, C   ; source code string
    call dprintf
    pop rbp
    mov rax, 0
    ret 
    ; open Grace_kid.s
%endmacro

real_main