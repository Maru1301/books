.global _start
.section .text
_start:
	# %rab will hold the base
	movq $2, %rbx

	# %rcx will hold the multiplier
	movq $3, %rcx

	# Store the accumulated value in rax
	movq $0, %rax

	# If the multipler is equal to zero, done
	cmpq $0, %rcx
	je complete
mainloop:
	# Add the accumulated value by base
	addq %rbx, %rax

	# Decrement %rcx, go back to loop label if %rcx is
	# not yet zero
	loopq mainloop
complete:
	# Move the accumulated value to %rdi so we can return it
	movq %rax, %rdi
	#call the "exit" system call
	movq $60, %rax
	syscall
