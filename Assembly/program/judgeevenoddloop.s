.global _start
.section .text
_start:
	# %rbx hold the base
	movq $10, %rbx

	# %rcx hold the value to subtract
	movq $2, %rcx

mainloop:
	subq %rcx, %rbx

	cmpq $1, %rbx
	je complete

	cmpq $0, %rbx
	je complete

	jmp mainloop
complete:
	movq %rbx, %rdi
	movq $60, %rax
	syscall
