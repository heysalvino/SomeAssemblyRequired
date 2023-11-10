// TRIPLE MAX
// int main() {
//   Use registers for local variables
//   int x = 10;
//   int y = 5;
//   int z = 20;

//   int max = x;

//   if (y > max) {
//       max = y;
//   }

//   if (z > max) {
//       max = z;
//   }

//   return max:
// }

// This line declares the label main as the program's entry point
.global main

.text

main:
     // This command goes at the beginning at every function
     push {ip, lr}

     // Move the value 10 into Register 0
     mov r0, #10 // x <- 10
     // Move the value 5 into Register 1
     mov r1, #5  // y <- 5
     // Move the value 20 into Register 2
     mov r2, #20 // z <- 20
     // Move the value 10 into Register 3
     mov r3, r0 // max <- x
if:
    // Compare r1 and r3
    cmp r1, r3  // if (y > max)

    // Branch on opposite quality
    ble if2 // Branch less than or equal to

    // Move Register 1 into Register 3
    mov r3, r1 // r3 <- r1

if2:
    // Compare r2 and r3
    cmp r2, r3 // if (z > max)

    // Move Register 2 into Register 3
    mov r3, r2 // r3 <- r2
    // Move return value to Register 0
    mov r0, r3 // r0 <- r3

    // Return 
    pop { ip, pc }

