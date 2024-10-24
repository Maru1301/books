.global _start
.section .data
value1:
	.quad 0b01010101

value2:
	.quad 0b11111111

value3:
	.quad 0b00010001

.section .text
_start:
	movq value1, %rax
	andq value2, %rax
	andq value3, %rax
	movq %rax, %rdi

	movq $60, %rax
	syscall
