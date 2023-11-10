// BASIC
// Add up three global variables

// Global variable
// int a = 10;
// int b = 20;
// int c = 30;

// Void main() {
//      Use registers for local variables
//      int sum = a + b + c;
//      return sum:
// }

// This line declares the label main as the program's entry point
.global main

.data
a: .word 10 // a is initially 10
b: .word 20 // b is initially 20
c: .word 30 // c is initially 30

.text

main:
    // This command goes at the beginning of every function
    push {ip, lr}

    // Register 0 gets the value stored at a
    ldr r0, =a
    ldr r0,[r0]
    // Register 1 gets the value stored at b
    ldr r1, =b
    ldr r1, [r1]
    // Register 2 gets the value stored at c
    ldr r2, =c 
    ldr r2, [r2]

    // Register 4 gets the sum of Register 0 and Register 1
    add r4, r0, r1  // r4 <- r0 + r1
    // Register 4 gets the sum of Register 4 and Register 2
    add r4, r4, r2  // r4 <- r4 + r2

    // Move return value to Register 0
    mov r0, r4  // r0 <- r4

    // Return
    pop {ip, pc}
