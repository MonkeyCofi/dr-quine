; x86_64 quine (NASM, Intel syntax)
; Outputs itself to stdout

%define S "; x86_64 quine (NASM, Intel syntax)%c; Outputs itself to stdout%c%c%%define S %c%s%c%c%%define FNAME %cGrace.s%c%csection .data%c    src db S, 0%c    fname db FNAME, 0%c    fmt db S, 0%c%csection .text%c    extern printf%c    global main%c%cmain:%c    push rbp%c    mov rbp, rsp%c    sub rsp, 16%c    lea rdi, [rel fmt]%c    mov rsi, 10%c    mov rdx, 10%c    mov rcx, 10%c    mov r8, 34%c    lea r9, [rel src]%c    mov qword [rsp + 0], 34%c    mov qword [rsp + 8], 10%c    xor eax, eax%c    call printf%c    xor eax, eax%c    leave%c    ret%c"

%define FNAME "Grace_kid.s"

section .data
    src db S, 0
    fname db FNAME, 0
    fmt db S, 0

section .text
    extern printf
    global main

main:
    push rbp
    mov rbp, rsp
    sub rsp, 16
    lea rdi, [rel fmt]
    mov rsi, 10
    mov rdx, 10
    mov rcx, 10
    mov r8, 34
    lea r9, [rel src]
    mov qword [rsp + 0], 34
    mov qword [rsp + 8], 10
    xor eax, eax
    call printf
    xor eax, eax
    leave
    ret
