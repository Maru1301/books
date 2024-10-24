.global _start
.section .data
#How many data we have
numberofnumbers:
	.quad 7
# The data elements themselves
mynumbers:
	.quad 5, 20, 30, 40, 52, 80, 1

### This program will fin the largest number ###
.section .text
_start:
	### Initialize Registers ###

	# Put the number of elements of the array in %rcx
	movq numberofnumbers, %rcx

	# Put the index of the first element in %rbx
	movq $0, %rbx

	# Use %rdi to hold the current-high value
	#movq $0, %rdi

	### Check Preconditions ###
	cmp $0, %rcx
	je endloop

	### Main Loop ###
mainloop:
	# Get the next value of mynumbers indexed by %rbx
	movq mynumbers(, %rbx, 8), %rax

	# If it is not bigger, go to the end of the loop
	cmp %rdi, %rax
	jbe loopcontrol

	# Otherwire, store this as the biggest elemento so far
	movq %rax, %rdi

loopcontrol:
	# Move %rbx to the next index
	incq %rbx

	# Decrement %rcx and keep going until %rcx is zero
	loop mainloop

	### Cleanup and Exit ###
endloop:
	# done - exit
	movq $60, %rax
	syscall
