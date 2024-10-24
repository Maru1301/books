.global _start
.section .data
value1:
	.quad 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF
value2:
	.quad 0x0101010101010101, 0x0101010101010101, 0x0101010101010101, 0x0101010101010101, 0x0101010101010101

.section .text
_start:
	movq $0, %rcx

add1:
	movq value1(, %rcx, 8), %rax
	addq value2(, %rcx, 8), %rax

	incq %rcx
add2:
	movq value1(, %rcx, 8), %rax
	adcq value2(, %rcx, 8), %rax

	incq % rcx

add3:

	movq value1(, %rcx, 8), %rax
	adcq value2(, %rcx, 8), %rax

	incq % rcx

add4:

	movq value1(, %rcx, 8), %rax
	adcq value2(, %rcx, 8), %rax

	incq % rcx

add5:

	movq value1(, %rcx, 8), %rax
	adcq value2(, %rcx, 8), %rax

finish:
	movq $60, %rax
	syscall
