// FIBONACCI IN A LOOP
// Calculate the 10th Fibonacci number in a loop

// Global variables
// int fib = 1;
// int prev = 0;

// int main () {
//    Use registers for local variables
//    int n = 1;
//    int sum = 0;

//    while ( n <= 10) {
//        sum = fib + prev;
//        prev = fib;
//        fib = sum;
//        n++;
//    }
//    return fib;
// }

// This line declares the label main as the program's entry point
.global main

.data
fib: .word 1
prev: .word 0

.text

main:
     // This command goes at the beginning of every function
     push {ip, lr}

     // Move the value 1 into Register 0
     mov r0, #1 // r0 <- 1
     // Move the value 0 into Register 1
     mov r1, #0 // r1 <- 0
     // Register 5 gets the value stored at fib
     ldr r5, =fib // r2 <- the address at fib
     // Register 2 gets the value stored at Register 5
     ldr r2, [r5]
     // Register 5 gets the value stored at prev
     ldr r5, =prev // r3 <- the address at prev
     // Register 3 gets the value stored at Register 5
     ldr r3, [r5]
     // Moved the value 10 into Register 4
     mov r4, #10 // the 10th number

while:
     // Compare r0 and r4
     cmp r0, r4 // while ( n <= 10)

     // Branch around body on opposite quality
     bgt end // Branch greater than

     // Loop body
     add r1, r2, r3 // r1 <- r2 + r3
     // Move the value at Register 2 into Register 3
     mov r3, r2
     // Move the value at Register 1 into Register 2
     mov r2, r1
     //Addition
     add r0, r0, #1 // r0 <- r0 + 1

    // Unconditional branch back to the top
     b while
end:
    // Move return value to Register 0
    mov r0, r1 // r0 <- r1

    // Return
    pop {ip, pc}
