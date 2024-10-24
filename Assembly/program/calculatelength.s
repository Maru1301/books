.global _start
.section .data
string:
	.ascii "This is a string.\0"

.section .text
_start:
	movq $-1, %rcx
	movq $string, %rdi
	movb $0, %al
	repne scasb

	subq $string, %rdi
	decq %rdi

finish:
	movq $60, %rax
	syscall
