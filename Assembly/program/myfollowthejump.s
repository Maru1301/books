.global _start

.section .text
_start:
	movq $60, %rax
	jmp add100

add1:
	addq $1, %rdx
	jmp add10

add10:
	addq $10, %rdx
	jmp bye

add100:
	add $100, %rdx
	jmp add1

bye:
	movq %rdx, %rdi
	syscall
