//@Autor Chavez Pulido Mario Alberto 
 //@GithubAutor MarioaCP
 //@Date 10 Diciembre 2021
.arch armv6
        .eabi_attribute 28, 1
        .eabi_attribute 20, 1
        .eabi_attribute 21, 1
        .eabi_attribute 23, 3
        .eabi_attribute 24, 1
        .eabi_attribute 25, 1
        .eabi_attribute 26, 2
        .eabi_attribute 30, 6
        .eabi_attribute 34, 1
        .eabi_attribute 18, 4
        .file   "3.1.C"
        .text
        .global vect
        .data
        .align  2
        .type   vect, %object
        .size   vect, 32
vect:
        .word   8
        .word   10
        .word   -3
                .word   4
        .word   -5
        .word   50
        .word   2
        .word   3
        .text
        .align  2
        .global _Z6minimoPii
        .arch armv6
        .syntax unified
        .arm
        .fpu vfp
        .type   _Z6minimoPii, %function
_Z6minimoPii:
        .fnstart
.LFB0:
        @ args = 0, pretend = 0, frame = 16
        @ frame_needed = 1, uses_anonymous_args = 0
        @ link register save eliminated.
        str     fp, [sp, #-4]!
        add     fp, sp, #0
        sub     sp, sp, #20
                str     r0, [fp, #-16]
        str     r1, [fp, #-20]
        ldr     r3, [fp, #-16]
        ldr     r3, [r3]
        str     r3, [fp, #-12]
        mov     r3, #1
        str     r3, [fp, #-8]
.L4:
        ldr     r2, [fp, #-8]
        ldr     r3, [fp, #-20]
        cmp     r2, r3
        bge     .L2
        ldr     r3, [fp, #-8]
        lsl     r3, r3, #2
        ldr     r2, [fp, #-16]
        add     r3, r2, r3
        ldr     r3, [r3]
        ldr     r2, [fp, #-12]
        cmp     r2, r3
        ble     .L3
        ldr     r3, [fp, #-8]
        lsl     r3, r3, #2
                ldr     r2, [fp, #-16]
        add     r3, r2, r3
        ldr     r3, [r3]
        str     r3, [fp, #-12]
.L3:
        ldr     r3, [fp, #-8]
        add     r3, r3, #1
        str     r3, [fp, #-8]
        b       .L4
        .L2:
        ldr     r3, [fp, #-12]
        mov     r0, r3
        add     sp, fp, #0
        @ sp needed
        ldr     fp, [sp], #4
        bx      lr
        .cantunwind
        .fnend
        .size   _Z6minimoPii, .-_Z6minimoPii
        .section        .rodata
        .align  2
.LC0:
        .ascii  " %d \012\000"
        .text
        .align  2
        .global main
        .syntax unified
        .arm
        .fpu vfp
                .type   main, %function
main:
        .fnstart
.LFB1:
        @ args = 0, pretend = 0, frame = 0
        @ frame_needed = 1, uses_anonymous_args = 0
        push    {fp, lr}
        .save {fp, lr}
        .setfp fp, sp, #4
        add     fp, sp, #4
        mov     r1, #8
                ldr     r0, .L8
        bl      _Z6minimoPii
        mov     r3, r0
        mov     r1, r3
        ldr     r0, .L8+4
        bl      printf
        mov     r3, #0
        mov     r0, r3
        pop     {fp, pc}
.L9:
        .align  2
.L8:
        .word   vect
        .word   .LC0
        .fnend
        .size   main, .-main
        .ident  "GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
        .section        .note.GNU-stack,"",%progbits