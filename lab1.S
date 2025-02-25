.global lab1
.syntax unified

lab1:
    push {lr}          // Збереження адреси повернення

    mov r0, #7         // a = 7
    mov r1, #2         // b = 2
    mov r2, #9         // c = 9

    sub r3, r0, r1     // r3 = a - b
    mov r4, #3
    mul r3, r3, r4     // r3 = (a - b) * 3

    mov r0, #1         // r0 = 1 (основа 2)
    lsl r5, r0, r2     // r5 = 2^c (зсув вліво на c біт)

    add r6, r3, r5     // r6 = (a - b) * 3 + 2^c

    pop {pc}           // Повернення

