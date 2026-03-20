# Introductory Haskell Example

A small introductory Haskell program for classroom use.

This example is designed to give a first exposure to Haskell and to support discussion of Haskell’s programming style compared to Python, C++, and Racket.

## Purpose

This program demonstrates several core Haskell ideas in one small file:

- explicit type signatures
- simple function definitions
- Boolean predicates
- recursion
- pattern matching on lists
- guards
- `if` as an expression
- basic I/O with `main`

It is not meant to be a realistic application. It is a compact teaching example.

## Files

- `example.hs` — the complete Haskell example program with instructional comments
- `example-no-comments.hs` — the complete Haskell example program without comments (easier to read code)
- `Haskell_Toolchain_Setup.pdf` — A set-up guide for Ubuntu Linux

## What the Program Demonstrates

The example includes:

- `double`  
  A simple function that multiplies an `Int` by 2.

- `isEven`  
  A Boolean function that determines whether an `Int` is even.  
  This version uses `mod` intentionally so it can be compared in class to the more idiomatic Haskell form using `even`.

- `sumList`  
  A recursive function that sums a list of `Int` values using pattern matching.

- `describeNumber`  
  A function using `if ... then ... else ...` to return a `String`.

- `factorial`  
  A recursive factorial function using `Integer`, showing that Haskell distinguishes between fixed-size `Int` and arbitrary-precision `Integer`.

- `doubleEvenNumbers`  
  A recursive list-processing function using guards and pattern matching.

- `main`  
  A simple `IO` action that runs the examples and prints the results.

## Toolchain Setup

This repository includes a PDF handout for installing and verifying the Haskell toolchain on Ubuntu Linux.

- `Haskell_Toolchain_Setup.pdf` — step-by-step setup and verification instructions for `ghc`, `ghci`, Haskell Language Server, and related tools

Use that handout first to set up the environment, then return to this README to compile and run the example program.

## Compile

Compile the program with `ghc`:

```bash
ghc example.hs -o example
```

## Run

Run the compiled program:

```bash
./example
```

## Expected Output

The exact spacing may vary slightly, but the output will be similar to:

```text
n = 7
double n = 14
The number is odd.

m = 8
double m = 16
The number is even.

sum of list = 15

factorial 7 = 5040

original list = [1,2,3,4,5]
doubled evens = [4,8]
```

## Notes for Class Discussion

This example is useful for comparing Haskell to earlier languages in the course.

### Compared to Python
- stronger static typing
- more emphasis on expressions and recursion
- less emphasis on step-by-step state changes

### Compared to C++
- less boilerplate for pure computation
- no mutation-based design in this example
- clearer separation between pure functions and I/O

### Compared to Racket
- similar expression-oriented and recursive style
- stronger and more explicit type system
- different syntax, but related functional ideas

## Key Haskell Ideas Illustrated

### Type Signatures
Examples such as:

```haskell
double :: Int -> Int
isEven :: Int -> Bool
sumList :: [Int] -> Int
```

show that Haskell treats types as an important part of program design.

### Pattern Matching
For example:

```haskell
sumList [] = 0
sumList (x:xs) = x + sumList xs
```

This is a standard Haskell technique for processing lists recursively.

### Guards
For example:

```haskell
factorial n
    | n <= 1 = 1
    | otherwise = n * factorial (n - 1)
```

Guards are often cleaner than `if` for multi-case logic.

### Strong Typing
The program uses `fromIntegral` when calling `factorial` because `n` is an `Int` while `factorial` expects an `Integer`.

That is intentional and helps show that Haskell does not automatically treat different numeric types as interchangeable.

## Educational Goal

The goal of this example is not mastery of Haskell.

The goal is to give students enough exposure to:

- read small Haskell functions,
- see how recursion and pattern matching work,
- observe Haskell’s type discipline,
- and compare Haskell’s style to other languages studied in the course.

## Author

Alexander Katrompas
