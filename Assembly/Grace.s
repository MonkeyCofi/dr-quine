; Comment
%define C "; Comment%2$c%%define C %1$c%4$s%1$c%2$c%%define FNAME %1$cGrace_kid.s%1$c%2$c%%macro real_main 0%2$csection .data%2$c%3$csrc db, C, 0%2$c%3$cfname db FNAME, 0%2$c%2$csection .text%2$c%3$cglobal main%2$c%3$cextern dprintf%2$c%2$c"
%define FNAME "Grace_kid.s"
%macro real_main 0
section .data
    src db C, 0
    fname db FNAME, 0

section .text
    global main
    extern dprintf

main:
    xor rax, rax
    mov rax, 2
    mov rdi, fname
    mov rsi, 2 | 0100o 
    mov rdx, 0o644
    syscall
    push rbp
    mov rdi, rax
    mov rsi, src
    mov rdx, 34 ; double quotes
    mov rcx, 10 ; newline
    mov r8, 9   ; tab
    mov r9, src   ; source code string
    call dprintf
    pop rbp
    mov rax, 0
    ret
%endmacro

real_main