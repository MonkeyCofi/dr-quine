default rel
%define S "default rel%3$c%%define S %1$c%2$s%1$c%3$c%3$c; This comment is outside the entrypoint%3$csection .data%3$c%4$cmsg db S, 0%3$c%3$csection .text%3$c%4$cglobal main%3$c%4$cextern printf%3$c%3$croutine:%3$c%4$cpush rbp%3$c%4$ccall printf WRT ..plt%3$c%4$cxor rax, rax%3$c%4$cpop rbp%3$c%4$cret%3$c%3$cmain:%3$c%4$c; This comment is inside the entrypoint%3$c%4$cxor rax, rax%3$c%4$cpush rbp%3$c%4$clea rdi, [rel msg]%3$c%4$cmov rsi, 34%3$c%4$clea rdx, [rel msg]%3$c%4$cmov rcx, 10%3$c%4$cmov r8, 9%3$c%4$ccall routine%3$c%4$cpop rbp%3$c%4$cret%3$c"

; This comment is outside the entrypoint
section .data
	msg db S, 0

section .text
	global main
	extern printf

routine:
	push rbp
	call printf WRT ..plt
	xor rax, rax
	pop rbp
	ret

main:
	; This comment is inside the entrypoint
	xor rax, rax
	push rbp
	lea rdi, [rel msg]
	mov rsi, 34
	lea rdx, [rel msg]
	mov rcx, 10
	mov r8, 9
	call routine
	pop rbp
	ret
