.global _start
.section .data
number:
	.quad 0b00001111

mask:
	.quad 0b00010000

.section .text
_start:
	movq mask, %rax
	movq number, %rbx

	andq %rax, %rbx
	jnz oneinbit5

	movq $0, %rdi
	jmp finish

oneinbit5:
	movq $1, %rdi

finish:
	movq $60, %rax
	syscall
