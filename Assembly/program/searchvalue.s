.global _start
.section .data
# number of the numbers
numberofnumbers:
	.quad 7

# numbers themselves
mynumbers:
	.quad 1, 2, 3, 4, 5, 6, 7

	### This program will find the target number ###
.section .text
_start:
	### Initialize the registers ###
	# $rdx hold the target number
	movq $4, %rdx

	# Put the number of elements of the array in %rcx
	movq numberofnumbers, %rcx

	### Check Precondition ###
	cmp $0, %rcx
	je endloop

	### Main Loop ###
mainloop:
	movq mynumbers-8(, %rcx, 8), %rax

	cmp %rax, %rdx
	jne controlloop

	movq %rcx, %rdi
	subq $1, %rdi

controlloop:
	loopq mainloop

endloop:
	movq $60, %rax
	syscall
