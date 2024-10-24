.section .text
.globl _start
_start:
    movw $0b0010000000001001, %bx
    addb %bl, %bh
    movb $0, %bl

    movq %rbx, %rdi

    movq $60, %rax
    syscall
