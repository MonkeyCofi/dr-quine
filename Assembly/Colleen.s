extern printf
section .data
	fmt db "extern printf%csection .data%c%cfmt db %c%s%c,0%csection .text%c%cglobal main%cfunction:%c%cret%cmain:%c%cpush rbp%c%cmov rbp, rsp%c%ccall function%c%cmov rdi, fmt%c%cmov rsi, 10%c%cmov rdx, 10%c%cmov rcx, 9%c%cmov r8, 34%c%cmov r9, fmt%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 9%c%cpush 10%c%cpush 10%c%cpush 34%c%cxor eax, eax%c%ccall printf%c%cadd rsp, 584%c%cleave%c%cret%c",0
section .text
	global main
function:
	ret
main:
	push rbp
	mov rbp, rsp
	call function
	mov rdi, fmt
	mov rsi, 10
	mov rdx, 10
	mov rcx, 9
	mov r8, 34
	mov r9, fmt
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 9
	push 10
	push 10
	push 34
	xor eax, eax
	call printf wrt ..plt
	add rsp, 584
	leave
	ret