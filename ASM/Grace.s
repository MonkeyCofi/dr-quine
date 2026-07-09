; Comment
%define C "; Comment%2$c%%define C %1$c%4$s%1$c%2$c%%define FNAME %1$cGrace_kid.s%1$c%2$c%%macro real_main 0%2$csection .data%2$c%3$csrc db C, 0%2$c%3$cfname db FNAME, 0%2$c%2$csection .text%2$c%3$cglobal main%2$c%3$cextern dprintf%2$c%2$cmain:%2$c%3$cxor rax, rax%2$c%3$cmov rax, 2%2$c%3$clea rdi, [rel fname]%2$c%3$cmov rsi, 2 | 0100o%2$c%3$cmov rdx, 0o644%2$c%3$csyscall%2$c%3$cpush rbp%2$c%3$cmov rdi, rax%2$c%3$clea rsi, [rel src]%2$c%3$cmov rdx, 34%2$c%3$cmov rcx, 10%2$c%3$cmov r8, 9%2$c%3$clea r9, [rel src]%2$c%3$ccall dprintf WRT ..plt%2$c%3$cpop rbp%2$c%3$cmov rax, 0%2$c%3$cret%2$c%%endmacro%2$c%2$creal_main%2$c"
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
	lea rdi, [rel fname]
	mov rsi, 2 | 0100o
	mov rdx, 0o644
	syscall
	push rbp
	mov rdi, rax
	lea rsi, [rel src]
	mov rdx, 34
	mov rcx, 10
	mov r8, 9
	lea r9, [rel src]
	call dprintf WRT ..plt
	pop rbp
	mov rax, 0
	ret
%endmacro

real_main
