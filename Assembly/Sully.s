%define C "%%define C %3$c%4$s%3$c%1$c%1$csection .data%1$c%2$csrc db C, 0%1$c%2$csrc_file db %3$cSully_%%d.s%3$c, 0%1$c%2$cfilename db %3$cSully_%%d%3$c, 0%1$c%2$cmode db %3$cw+%3$c, 0%1$c%2$cexec db %3$cnasm -f elf64 Sully_%%1$d.s && gcc -no-pie Sully_%%1$d.o -o Sully_%%1$d%3$c%1$c%1$csection .bss%1$c%2$cbuffer resb 64%1$c%2$cfile_ptr resq 1%1$c%1$csection .text%1$c%2$cglobal main%1$c%2$cextern sprintf%1$c%2$cextern fprintf%1$c%2$cextern fopen%1$c%2$cextern fclose%1$c%2$cextern system%1$c%2$cextern printf%1$c%1$cmain:%1$c%2$cxor rax, rax%1$c%2$cmov rax, %5$d%1$c%2$ctest rax, rax%1$c%2$cjz .done%1$c%2$cpush rax%1$c%2$clea rdi, [rel buffer]%1$c%2$clea rsi, [rel src_file]%1$c%2$cmov rdx, rax%1$ccall sprintf%1$c%2$cpop rax%1$clea rdi, [rel buffer]%1$c%2$clea rsi, [rel mode]%1$c%2$cpush rax%1$c%2$ccall fopen%1$c%2$ctest rax, rax%1$c%2$cjz .error%1$c%2$cmov [rel file_ptr], rax%1$c%2$cpop rax%1$c%2$cxor rdi, rdi%1$c%2$cmov rdi, rax%1$c%2$cdec rdi%1$c%2$cpush qword rdi%1$c%2$cmov rdi, [rel file_ptr]%1$c%2$cmov rsi, src%1$c%2$cmov rdx, 10%1$c%2$cmov rcx, 9%1$c%2$cmov r8, 34%1$c%2$cmov r9, src%1$c%2$ccall fprintf%1$c%2$cpop rax%1$c%2$cinc rax%1$c%2$cpush rax%1$cmov rdi, [rel file_ptr]%1$c%2$ccall fclose%1$c%2$cpop rax%1$c%2$clea rdi, [rel buffer]%1$c%2$clea rsi, [rel exec]%1$c%2$cmov rdx, rax%1$c%2$cpush rax%1$c%2$ccall sprintf%1$c%2$cpop rax%1$c%2$clea rdi, [rel buffer]%1$c%2$cpush rax%1$c%2$ccall system%1$c%2$cpop rax%1$c%2$cret%1$c%1$c.error:%1$c%2$cmov rax, 1%1$c%2$cret%1$c%1$c.done:%1$c%2$cret"

section .data
    src db C, 0
    src_file db "Sully_%d.s", 0
    filename db "Sully_%d", 0
    mode db "w+", 0
    exec db "nasm -f elf64 Sully_%1$d.s && gcc -no-pie Sully_%1$d.o -o Sully_%1$d"

section .bss
    buffer resb 64
    file_ptr resq 1

section .text
    global main
    extern sprintf
    extern fprintf
    extern fopen
    extern fclose
    extern system
    extern printf

main:
    xor rax, rax
    mov rax, 5
    test rax, rax
    jz .done
    push rax
    lea rdi, [rel buffer]
    lea rsi, [rel src_file]
    mov rdx, rax
    call sprintf
    pop rax

    lea rdi, [rel buffer]
    lea rsi, [rel mode]
    push rax
    call fopen
    test rax, rax
    jz .error
    mov [rel file_ptr], rax
    pop rax

    xor rdi, rdi
    mov rdi, rax
    dec rdi
    push qword rdi 
    mov rdi, [rel file_ptr]
    mov rsi, src
    mov rdx, 10
    mov rcx, 9
    mov r8, 34
    mov r9, src
    call fprintf
    pop rax
    inc rax

    push rax
    mov rdi, [rel file_ptr]
    call fclose
    pop rax

    lea rdi, [rel buffer]
    lea rsi, [rel exec]
    mov rdx, rax
    push rax
    call sprintf
    pop rax

    lea rdi, [rel buffer]
    push rax
    call system
    pop rax
    ret

.error:
    mov rax, 1
    ret

.done:
    ret