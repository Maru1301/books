.global _start

.section .data
string:
	.ascii "This is a string.\n"
string_end:

.equ string_length, string_end - string

.section .text
_start:
	movq $10, %rbx

print:
	movq $0x01, %rax
	movq $1, %rdi
	movq $string, %rsi
	movq $string_length, %rdx
	syscall

	decq %rbx
	cmp $0, %rbx
	jne print

finish:
	movq $0x3c, %rax
	movq $0, %rdi
	syscall
