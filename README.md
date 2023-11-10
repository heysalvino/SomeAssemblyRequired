# SomeAssemblyRequired #

This project, assigned in CMS 230 during the Fall 2017 semester, focuses on translating given C programs into ARM assembly language. The goal is to provide students with hands-on experience in writing assembly language programs dealing with local and global variables, conditional statements, and loops.

## Overview

The task involves translating provided C programs into ARM assembly language, with each program emphasizing specific concepts such as global variables, conditional statements, loops, and logical structures. The project consists of five problems, and the correctness and functionality of each program will be evaluated by running them on a Raspberry Pi.

## Grading

- Each translated program is expected to have an obvious correct output, which can be verified using `echo $?` after execution. 
- A well-structured Makefile to build the programs is required, and a working build using `make` contributes to the grading.
- While there are no precise style guidelines for ARM programs, the code should be well-formatted to reflect its logical structure. Incoherent or impossible-to-understand formatting may result in point deductions.

## Submission

- Name your problems as `problem1.c`, `problem2.c`, and so on.
- Include a Makefile for building your programs.
- Descriptive comments within the programs are encouraged for clarity.
- Upload your work to GitHub by the due date. Ensure the Raspberry Pi is connected to a network, or if not possible, copy the files to your main computer or Cloud 9 and upload from there.

## The Problems

### Problem 1: Basic

```c
// Add up three global variables

// Global variable 
int a = 10;
int b = 20; 
int c = 30;

void main() { 
    // Use registers for local variables 
    int sum = a + b + c; 
    return sum; 
}
```

### Problem 2: Triple Max

```c
int main() {

    // Use registers for local variables 
    int x = 10; 
    int y = 5; 
    int z = 20;

    int max = x;

    if (y > max) { 
        max = y; 
    }

    if (z > max) { 
        max = z; 
    }

    return max;

}
```

### Problem 3: Mod

```c
// Return remainder after integer division

// Global variables 
int a = 4; 
int b = 30;

int main() {

    // Use registers for local variables 
    int remainder; 
    int divisor;

    if (a > b) { 
        remainder = a; 
        divisor = b; 
    } else { 
        remainder = b; 
        divisor = a; 
    }

    while (remainder >= divisor) { 
        remainder -= divisor; 
    }

    return remainder;

}
```

### Problem 4: Fibonacci in a Loop

```c
// Calculate the 10th Fibonacci number in a loop

// Global variables 
int fib = 1; 
int prev = 0;

int main() {

    // Use registers for local variables 
    int n = 1; 
    int sum = 0;

    while (n <= 10) { 
        sum = fib + prev; 
        prev = fib; 
        fib = sum; 
        n++; 
    }

    return fib;

}
```

### Problem 5: The Euclidean Algorithm

```c
// Return gcd of a and b

int a = 60; 
int b = 25;

int main() {

    while (a != b) { 
        if (a > b) { 
            a = a - b; 
        } else { 
            b = b - a; 
        } 
    } 
    return a;

}
```

*Note: Please adjust the program names and test file names according to your project structure and naming conventions.*
