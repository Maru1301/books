.section .text
.global _start
_start:
    movq $0b00101101, %rdi
    movq $60, %rax
    syscall
