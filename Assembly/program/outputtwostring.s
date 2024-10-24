.global _start

.section .data
string1:
	.ascii "This is string1."
string1_end:
string2:
	.ascii "This is string2.\n"
string2_end:

.equ string1_length, string1_end - string1
.equ string2_length, string2_end - string2

.section .text
_start:
	movq $0x01, %rax
	movq $1, %rdi
	movq $string1, %rsi
	movq $string1_length, %rdx
	syscall

	movq $0x01, %rax
	movq $1, %rdi
	movq $string2, %rsi
	movq $string2_length, %rdx
	syscall

	### Exit
	movq $0x3c, %rax
	movq $0, %rdi
	syscall
