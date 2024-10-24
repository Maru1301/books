.globl _start
.section .text
_start:
    #Perform various arithmetic functions
    movq $3, %rdx
    movq $5, %rax
    addq %rdx, %rax
    mulq %rdx
    movq $2, %rdx
    addq %rdx, %rax
    movq $4, %rdx
    mulq %rdx
    movq %rax, %rdi

    #Set the exit system call number
    movq $60, %rax

    #Perform the system call
    syscall
