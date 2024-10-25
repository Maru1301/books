.global _start
.section .text
_start:
	movq $0, %rdi
	movq $8, %rcx
	movb $0b10110101, %ah

check:
	testb $0b00000001, %ah
	jnz isone

	jmp controlloop

isone:
	incq %rdi

controlloop:
	rorb %ah
	loopq check

finish:
	movq $60, %rax
	syscall
