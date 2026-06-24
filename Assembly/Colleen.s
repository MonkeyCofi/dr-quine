default rel
extern printf

section .data
    msg db "extern printf%c%csection .data%c%cmsg db %s", 0
    len equ $ - msg

global main

main:
    mov rdi, msg
    
    call print WRT ..plt