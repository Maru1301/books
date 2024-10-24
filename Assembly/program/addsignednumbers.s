.global _start
.section .text
_start:
	movq $0, %rdi
	movb $0b11111111, %al
	movb $0b11111111, %ah

	addb %al, %ah
	jno finish

overflow:
	movq $1, %rdi

finish:
	movq $60, %rax
	syscall
