.global _start
.section .text
_start:
	# %rax hold the number that we want to judge
	movq $160, %rax

	# %rbx hold 2
	movq $2, %rbx

	divq %rbx, %rax

	movq %rdx, %rdi

	movq $60, %rax
	syscall
