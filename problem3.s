// MOD
// Return remainder after integer division

// Global variables
// int a = 4;
// int b = 30;

// int main() {
//    Use registers for local variables
//    int remainder;
//    int divisor;

//     while (remainder >= divisor) {
//        remainder -= divisor;
//     }
//     return remainder;
// }

// This line declares the label main as the program's entry point
.global main

.data
a: .word 4  // a is initially 4
b: .word 30 // b is initially 30

.text

main:
    // This command goes at the beginning of every function
    push {ip, lr}

    // Register 0 gets the value stored at a
    ldr r0, =a // r0 <- a
    // Register 1 gets the value stored at b
    ldr r1, =b // r1 <- b
    // Register 2 gets the value stored at Register 0
    ldr r2,[r0]// remainder <- r0
    // Register 3 gets the value stored at Register 1
    ldr r3,[r1]// divisor <- r1

while:
    // Compare r2 and r3
    cmp r2,r3 // while (remainder >= divisor)

    // Branch around body on opposite quality
    blt end // Branch less than

    // Loop body
    sub r2,r3,r3 // r2 <- r3 - r3

    // Unconditional branch back to the top
    b while
end:
    // Move return value to Register 0
    mov r0, r2 // r0 <- r2

    // Return
    pop {ip, pc}
