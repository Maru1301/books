.global _start
.section .data
numberofnumbers:
	.quad 7000
mynumbers:
	.quad 1, 30, 40, 177, 70, 81, 9

.section .text
_start:
	### Intialize the value ###
	# Move number of numbers into rcx
	movq numberofnumbers, %rcx

	# %rdi Hold the current-high value
	movq $0, %rdi

	### Check Precondition ###
	cmp $0, %rcx
	je endloop

	### Main Loop ###
mainloop:
	movq mynumbers-8(, %rcx, 8), %rax

	# If it is not bigger, go to the end of the loop
	cmp %rdi, %rax
	jbe loopcontrol

	# Otherwise, store this as the biggest element so far
	movq %rax, %rdi

loopcontrol:
	# Decrement %rcx and keep going until %rcx is zero
	loopq mainloop

	### Cleanup and Exit ###
endloop:
	# done - exit
	movq $60, %rax
	syscall
