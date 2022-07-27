.globl factorial

.data
n: .word 8

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:
    # YOUR CODE HERE
    addi s2, x0, 1
    add s3, x0, a0
    addi t0, x0, 1
loop:
    mul s2, s2, s3
    addi s3, s3, -1
    beq s3, t0, exit
    jal x0, loop
exit:
    add a0, s2, x0
    jr ra