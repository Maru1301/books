.global _start
.section .data
values:
	.quad 11, 22, 33, 44, 55, 66, 77, 88, 99, 100
numofvalue:
	.quad 10

.section .text
_start:
	movq $8, %rbx
	movq numofvalue, %rcx
	movq $values, %rdi
	movq $55, %rax
	repne scasq

	subq $values, %rdi
	movq %rdi, %rax
	divq %rbx
	movq %rax, %rdi
	decq %rdi
finish:
	movq $60, %rax
	syscall
