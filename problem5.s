// THE EUCLIDEAN ALGORITHM
// Return gcd of a and b

// int a = 60;
// int b = 25;

// int main() {
//     while (a != b) {
//         if (a > b) {
//             a = a - b;
//         } else {
//             b = b - a;
//         }
//     }
//     return a;
// }

// This line declares the label main as the program's entry point
.global main

.data
a: .word 60  // a is initially 60
b: .word 25  // b is initially 25

.text

main:
    // This command goes at the beginning of every function
    push {ip, lr}

    // Register 0 getsthe  address of  a
    ldr r0, =a // r0 <- a
    // Register 0 gets the value at Register 0
    ldr r0, [r0]
    // Register 1 gets the address of b
    ldr r1, =b // r1 <- b
    // Register 1 gets the value at Register 1
    ldr r1, [r1]

while:
    // Compare r0 and r1
    cmp r0, r1 // while (a != b)

    // Branch around body on opposite quality
    beq  end // Branch equal to

if:
    // Compare r0 and r1
    cmp r0, r1 // if (a > b)

    // Branch opposite quality
    ble if2 // Branch less than or equal to

    // Subtraction
    sub r0, r0, r1 // r0 <- r0 - r1

    // Unconditional branch back to the top
    b while
if2:
    // Compare r0 and r1
    cmp r0, r1 // if (a <= b)

    // Subtraction
    sub r1, r1, r0 // r1 <- r1 - r0

    // Unconditional branch back to the top
    b while
end:
    // Return
    pop {ip, pc}
